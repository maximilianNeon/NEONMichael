import 'dart:typed_data';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:neon_web/core/domain/entities/asset_entity.dart';
import 'package:neon_web/core/error/failure.dart';
import 'package:neon_web/core/success/success.dart';
import 'package:dartz/dartz.dart';
import '../../domain/entities/project_entity.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;

abstract class FireBaseRemoteDataSource {
  Future<Either<Failure, Success>> firebaseSignIn({
    required String email,
    required String password,
  });
  Future<Either<Failure, Success>> firebaseSignOut();
  Future<Either<Failure, Success>> uploadSingleProjectToDB({
    required ProjectEntity projectEntity,
    required Map<int, Uint8List> assetDataMap,
    required Map<int, Uint8List> iconData,
  });
  Future<Either<Failure, Map<String,dynamic>>> downloadAllProjects();
  Future<Either<Failure, Success>> updateSingleProject({
    required ProjectEntity projectEntity,
    required Map<String, Uint8List> assetDataMap,
    required Map<String, Uint8List> iconData,
  });
  Future<Either<Failure, Success>> uploadAssetImagesToCloudFireStorage({
    required String projectTitle,
    required Map<int, Uint8List> assetDataMap,
  });
  Future<Either<Failure, Success>> uploadIconImageToCloudFireStorage({
    required String projectTitle,
    required Map<int, Uint8List> iconData,
  });
}

@injectable
class FireBaseRemoteDataSourceImpl extends FireBaseRemoteDataSource {
  final String projectsEndPoint = "projects";
  final String storageAssetSubfolder = "/assetData";
  final String storageIconSubfolder = "/iconData";
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  final firestoreInstance = FirebaseFirestore.instance;
  final firebase_storage.FirebaseStorage storage =
      firebase_storage.FirebaseStorage.instance;

  Future<Either<Failure, Success>> firebaseSignIn(
      {required String email, required String password}) async {
    try {
      final result = await firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);

      return result.user == null
          ? Left(FireBaseFailure())
          : Right(FireBaseSuccess());
    } on FirebaseAuthException catch (error) {
      print(error.message);
      return Left(FireBaseFailure());
    }
  }

  @override
  Future<Either<Failure, Success>> firebaseSignOut() {
    // TODO: implement firebaseSignOut
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Map<String, dynamic>>> downloadAllProjects() async {
    List<ProjectEntity> projectEntiyList = [];
    Map<int, Uint8List> iconImageFile = {};
    Map<int, Uint8List> assetImageFiles = {};

    try {
      CollectionReference<Map<String, dynamic>> projectsReference =
          firestoreInstance.collection(projectsEndPoint);

      QuerySnapshot<Map<String, dynamic>> querySnapshot =
          await projectsReference.get();

      await Future.forEach<Map<String, dynamic>>(
        querySnapshot.docs.map((e) => e.data()),
        (data) => projectEntiyList.add(
          ProjectEntity.fromJson(data),
        ),
      );

      Future.forEach<ProjectEntity>(projectEntiyList, (project) async {
        //Download IconImage and Add To iconImageFile
        await firebase_storage.FirebaseStorage.instance
            .ref(project.title + storageIconSubfolder)
            .child(project.id.toString())
            .getData()
            .then(
              (iconFileData) => iconImageFile.addAll(
                {project.id: iconFileData ?? Uint8List(0)},
              ),
            );

        await Future.forEach<AssetEntity>(
          project.assets,
          (assetEntity) async => await firebase_storage.FirebaseStorage.instance
              .ref(project.title + storageAssetSubfolder)
              .child(assetEntity.id.toString())
              .getData()
              .then(
                (assetImageFile) => assetImageFiles
                    .addAll({assetEntity.id: assetImageFile ?? Uint8List(0)}),
              ),
        );
      });

      return Right({
        "projectEntityList": projectEntiyList,
        "iconImageFile": iconImageFile,
        "assetImageFiles": assetImageFiles
      });
    } on FirebaseException {
     return Left(FireBaseFailure());
    } catch (error) {
      return Left(FunctionFailure());
    }

    //Download AssetImages
  }

  @override
  Future<Either<Failure, Success>> updateSingleProject(
      {required ProjectEntity projectEntity,
      required Map<String, Uint8List> assetDataMap,
      required Map<String, Uint8List> iconData}) {
    // TODO: implement updateSingleProject
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Success>> uploadSingleProjectToDB(
      {required ProjectEntity projectEntity,
      required Map<int, Uint8List> assetDataMap,
      required Map<int, Uint8List> iconData}) async {
    try {
      // Upload IconImage and Rewrite ProjectEntity.imageUrl from Url to UploadFileName
      await uploadIconImageToCloudFireStorage(
          projectTitle: projectEntity.title, iconData: iconData);

      // Upload AssetImages
      await uploadAssetImagesToCloudFireStorage(
          projectTitle: projectEntity.title, assetDataMap: assetDataMap);

      // Add Json to CloudFireStore
      await firestoreInstance
          .collection(projectsEndPoint)
          .add(projectEntity.toJson());

      return Right(FireBaseSuccess());
    } on FirebaseException {
      return Left(FireBaseFailure());
    } catch (error) {
      return Left(FunctionFailure());
    }
  }

  @override
  Future<Either<Failure, Success>> uploadAssetImagesToCloudFireStorage(
      {required String projectTitle,
      required Map<int, Uint8List> assetDataMap}) async {
    try {
      assetDataMap.forEach((key, value) async {
        firebase_storage.Reference storageReference = storage
            .ref(projectTitle + storageAssetSubfolder)
            .child(key.toString());

        await storageReference.putData(value);
      });

      return Right(FunctionSuccess());
    } on FirebaseException {
      return Left(FireBaseFailure());
    } catch (error) {
      return Left(FunctionFailure());
    }
  }

  @override
  Future<Either<Failure, Success>> uploadIconImageToCloudFireStorage(
      {required String projectTitle,
      required Map<int, Uint8List> iconData}) async {
    try {
      firebase_storage.Reference storageReference = storage
          .ref(projectTitle + storageIconSubfolder)
          .child(iconData.keys.first.toString());

      await storageReference.putData(iconData.values.first);

      return Right(FunctionSuccess());
    } on FirebaseException {
      return Left(FireBaseFailure());
    } catch (error) {
      return Left(FunctionFailure());
    }
  }
}
