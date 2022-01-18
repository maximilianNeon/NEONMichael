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
  Future<Either<Failure, List<ProjectEntity>>> downloadAllProjects();
  Future<Either<Failure, Success>> updateSingleProject({
    required DataContainer dataContainer,
  });
  Future<Either<Failure, List<AssetEntity>>>
      uploadAssetImagesToCloudFireStorage({
    required String projectTitle,
    required List<AssetEntity> projectAssets,
    required Map<int, Uint8List> assetDataMap,
  });
  Future<Either<Failure, String>> uploadIconImageToCloudFireStorage({
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
  Future<Either<Failure, List<ProjectEntity>>> downloadAllProjects() async {
    List<ProjectEntity> projectEntiyList = [];

    try {
      //Get ProjectMap
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


      print("DownloadedList: $projectEntiyList");
      return Right(projectEntiyList);
    } on FirebaseException catch (error) {
      print(error);
      return Left(FireBaseFailure());
    } catch (error) {
      print(error);
      return Left(FunctionFailure());
    }
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
    ProjectEntity _projectEntity = dataContainer.projectEntityList.first;
    String _imageUrl = "";
    List<AssetEntity> _assetEntityList = [];

    try {
      // Upload IconImage and Rewrite ProjectEntity.imageUrl from Url to UploadFileName
      await uploadIconImageToCloudFireStorage(
              projectTitle: dataContainer.projectEntityList.first.title,
              iconData: dataContainer.iconFileData)
          .then((value) => value.fold((l) => null, (url) {
                _imageUrl = url;
              }));

      // Upload AssetImages
      await uploadAssetImagesToCloudFireStorage(
              projectTitle: dataContainer.projectEntityList.first.title,
              projectAssets: dataContainer.projectEntityList.first.assets,
              assetDataMap: dataContainer.assetFileData)
          .then((value) => value.fold(
              (l) => null,
              (assetList) => {
                    _assetEntityList = assetList,
                  }));

      // Add Json to CloudFireStore

      await firestoreInstance.collection(projectsEndPoint).add(_projectEntity
          .copyWith(assets: _assetEntityList, imageUrl: _imageUrl)
          .toJson());

      return Right(FireBaseSuccess());
    } on FirebaseException {
      return Left(FireBaseFailure());
    } catch (error) {
      return Left(FunctionFailure());
    }
  }

  @override
  Future<Either<Failure, List<AssetEntity>>>
      uploadAssetImagesToCloudFireStorage(
          {required String projectTitle,
          required List<AssetEntity> projectAssets,
          required Map<int, Uint8List> assetDataMap}) async {
    List<AssetEntity> newAssetList = [];

    try {
      await Future.forEach<MapEntry<int, Uint8List>>(assetDataMap.entries,
          (element) async {
        firebase_storage.Reference storageReference = storage
            .ref(projectTitle + storageAssetSubfolder)
            .child(element.key.toString());

        await storageReference.putData(element.value);

        String assetUrl = await firebase_storage.FirebaseStorage.instance
            .ref(
                "gs://neon-mobbin.appspot.com/$projectTitle$storageAssetSubfolder")
            .child(element.key.toString())
            .getDownloadURL();

        final assetEntityFiltered =
            projectAssets.where((asset) => asset.id == element.key);

        newAssetList
            .add(assetEntityFiltered.first.copyWith(imageUrl: assetUrl));
      });

      print(newAssetList);

      return Right(newAssetList);
    } on FirebaseException {
      return Left(FireBaseFailure());
    } catch (error) {
      return Left(FunctionFailure());
    }
  }

  @override
  Future<Either<Failure, String>> uploadIconImageToCloudFireStorage(
      {required String projectTitle,
      required Map<int, Uint8List> iconData}) async {
    try {
      firebase_storage.Reference storageReference = storage
          .ref(projectTitle + storageIconSubfolder)
          .child(iconData.keys.first.toString());

      await storageReference.putData(iconData.values.first);

      //get downloadUrl for Uploaded Image
      final String iconImageUrl = await firebase_storage
          .FirebaseStorage.instance
          .ref(
              "gs://neon-mobbin.appspot.com/$projectTitle$storageIconSubfolder")
          .child(iconData.keys.first.toString())
          .getDownloadURL();

      return Right(iconImageUrl);
    } on FirebaseException {
      return Left(FireBaseFailure());
    } catch (error) {
      return Left(FunctionFailure());
    }
  }
}
