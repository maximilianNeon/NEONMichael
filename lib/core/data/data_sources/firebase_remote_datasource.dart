import 'dart:typed_data';
import 'package:http/http.dart' as http;
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:neon_web/core/domain/entities/asset_entity.dart';
import 'package:neon_web/core/domain/entities/data_container.dart';
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
    required DataContainer dataContainer,
  });
  Future<Either<Failure, DataContainer>> downloadAllProjects();
  Future<Either<Failure, Success>> updateSingleProject({
    required DataContainer dataContainer,
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
  Future<Either<Failure, DataContainer>> downloadAllProjects() async {
    print("downloadAllProjects");
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

      final downloadUrl = await firebase_storage.FirebaseStorage.instance
          .ref(projectEntiyList.first.title + storageIconSubfolder)
          .child(projectEntiyList.first.id.toString())
          .getDownloadURL();

      print(downloadUrl);
          

        final response = await http.get(Uri.parse(downloadUrl), headers: {"Accept": "application/json","Access-Control-Allow-Origin": "*"});

        // print(response.body);

      //     await Future.forEach<ProjectEntity>(projectEntiyList, (project) async {
      //       print(project.title + storageIconSubfolder);
//
      //       final result = await firebase_storage.FirebaseStorage.instance
      //           .ref(project.title + storageIconSubfolder)
      //           .child(project.id.toString())
      //           .getData().whenComplete(() => print("complete"));
//
      //       iconImageFile.addAll({project.id: result ?? Uint8List(0)});
//
      //       print(iconImageFile);
//
      //       await Future.forEach<AssetEntity>(
      //         project.assets,
      //         (assetEntity) async => await firebase_storage.FirebaseStorage.instance
      //             .ref(project.title + storageAssetSubfolder)
      //             .child(assetEntity.id.toString())
      //             .getData()
      //             .then(
      //               (assetImageFile) => assetImageFiles
      //                   .addAll({assetEntity.id: assetImageFile ?? Uint8List(0)}),
      //             ).whenComplete(() => print("complete")),
      //       );
      //     });

      print("Asset: $assetImageFiles");
      print(iconImageFile);
      return Right(
        DataContainer(
          assetFileData: assetImageFiles,
          iconFileData: iconImageFile,
          projectEntityList: projectEntiyList,
        ),
      );
    } on FirebaseException catch (error) {
      print(error);
      return Left(FireBaseFailure());
    } catch (error) {
      print(error);
      return Left(FunctionFailure());
    }

    //Download AssetImages
  }

  @override
  Future<Either<Failure, Success>> updateSingleProject(
      {required DataContainer dataContainer}) {
    // TODO: implement updateSingleProject
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Success>> uploadSingleProjectToDB(
      {required DataContainer dataContainer}) async {
    try {
      // Upload IconImage and Rewrite ProjectEntity.imageUrl from Url to UploadFileName
      await uploadIconImageToCloudFireStorage(
          projectTitle: dataContainer.projectEntityList.first.title,
          iconData: dataContainer.iconFileData);

      // Upload AssetImages
      await uploadAssetImagesToCloudFireStorage(
          projectTitle: dataContainer.projectEntityList.first.title,
          assetDataMap: dataContainer.assetFileData);

      // Add Json to CloudFireStore
      await firestoreInstance
          .collection(projectsEndPoint)
          .add(dataContainer.projectEntityList.first.toJson());

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
