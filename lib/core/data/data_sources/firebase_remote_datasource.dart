import 'dart:typed_data';
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
  Future<Either<Failure, Map<int, Uint8List>>> downloadAssetImageData({
    required ProjectEntity projectEntity,
  });
  Future<Either<Failure, List<ProjectEntity>>> downloadAllProjects();

  Future<Either<Failure, List<AssetEntity>>>
      uploadAssetImagesToCloudFireStorage({
    required int projectId,
    required List<AssetEntity> projectAssets,
    required Map<int, Uint8List> assetDataMap,
  });
  Future<Either<Failure, String>> uploadIconImageToCloudFireStorage({
    required int projectId,
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
  Future<Either<Failure, Success>> uploadSingleProjectToDB(
      {required DataContainer dataContainer}) async {
    ProjectEntity _projectEntity = dataContainer.projectEntityList.first;
    String _imageUrl = "";
    List<AssetEntity> _assetEntityUploadList = [];

    try {
      // Upload IconImage and Rewrite ProjectEntity.ImageReferenceId to Uploaded ImageName
      if (dataContainer.iconFileData.isNotEmpty) {
        await uploadIconImageToCloudFireStorage(
                projectId: _projectEntity.projectId,
                iconData: dataContainer.iconFileData)
            .then(
          (value) => value.fold(
            (l) => null,
            (url) {
              _imageUrl = url;
            },
          ),
        );

        _projectEntity = _projectEntity.copyWith(
            imageReferenceId: dataContainer.iconFileData.keys.first,
            imageUrl: _imageUrl);
      }

      // Upload AssetImages
      if (dataContainer.assetFileData.isNotEmpty) {
        await uploadAssetImagesToCloudFireStorage(
                projectId: _projectEntity.projectId,
                projectAssets: dataContainer.projectEntityList.first.assets,
                assetDataMap: dataContainer.assetFileData)
            .then(
          (value) => value.fold(
            (l) => null,
            (assetList) => {
              _assetEntityUploadList = assetList,
            },
          ),
        );

        if (_projectEntity.assets.length == 0) {
          _projectEntity =
              _projectEntity.copyWith(assets: _assetEntityUploadList);
        } else {
          List<AssetEntity> existingAssets = _projectEntity.assets
              .where((element) => element.imageUrl != "")
              .toList();

          existingAssets.addAll(_assetEntityUploadList);
         

          _projectEntity = _projectEntity.copyWith(assets: existingAssets);
         
        }
      }

      //Check if Project Exists on DB
      DocumentSnapshot projectEntity = await firestoreInstance
          .collection(projectsEndPoint)
          .doc("${_projectEntity.projectId}")
          .get();

      projectEntity.exists
          ?
          // Update Existing Project
          await updateTask(updatedProjectEntity: _projectEntity)

          // Project isnt existing
          : await firestoreInstance
              .collection(projectsEndPoint)
              .doc("${_projectEntity.projectId}")
              .set(_projectEntity.toJson());

      return Right(FireBaseSuccess());
    } on FirebaseException {
      return Left(FireBaseFailure());
    } catch (error) {
      return Left(FunctionFailure());
    }
  }

  Future<void> updateTask({required ProjectEntity updatedProjectEntity}) async {
    //Delete Images which arn't referenced to To ProjectMap
    firebase_storage.ListResult storageAssetList = await firebase_storage
        .FirebaseStorage.instance
        .ref(updatedProjectEntity.projectId.toString() + storageAssetSubfolder)
        .listAll();
    firebase_storage.ListResult storageImageList = await firebase_storage
        .FirebaseStorage.instance
        .ref(updatedProjectEntity.projectId.toString() + storageIconSubfolder)
        .listAll();

    List<String> newStorageAssetList =
        storageAssetList.items.map((e) => e.name).toList();
    List<String> newStorageIconList =
        storageImageList.items.map((e) => e.name).toList();

    await Future.forEach<int>(
        updatedProjectEntity.assets.map((e) => e.id).toList(), (id) {
     

      newStorageAssetList.remove("${id.toString()}");
    });

   

    newStorageIconList
        .remove("${updatedProjectEntity.imageReferenceId.toString()}");

    await Future.forEach<String>(
        newStorageAssetList,
        (name) async => await firebase_storage.FirebaseStorage.instance
            .ref(
                "${updatedProjectEntity.projectId.toString()}$storageAssetSubfolder/")
            .child(name)
            .delete());

    if (newStorageIconList.length > 0)
      await Future.forEach<String>(
          newStorageIconList,
          (name) async => await firebase_storage.FirebaseStorage.instance
              .ref(
                  "${updatedProjectEntity.projectId.toString()}$storageIconSubfolder/")
              .child(name)
              .delete());

    //Update ProjectMap on DB
    return firestoreInstance
        .collection(projectsEndPoint)
        .doc("${updatedProjectEntity.projectId}")
        .set(updatedProjectEntity.toJson());
  }

  @override
  Future<Either<Failure, List<AssetEntity>>>
      uploadAssetImagesToCloudFireStorage(
          {required int projectId,
          required List<AssetEntity> projectAssets,
          required Map<int, Uint8List> assetDataMap}) async {
    List<AssetEntity> newAssetList = [];

    try {
      await Future.forEach<MapEntry<int, Uint8List>>(assetDataMap.entries,
          (element) async {
        firebase_storage.Reference storageReference = storage
            .ref(projectId.toString() + storageAssetSubfolder)
            .child(element.key.toString());

        await storageReference.putData(element.value);

        String assetUrl = await firebase_storage.FirebaseStorage.instance
            .ref(
                "gs://neon-mobbin.appspot.com/${projectId.toString()}$storageAssetSubfolder")
            .child(element.key.toString())
            .getDownloadURL();

        final assetEntityFiltered =
            projectAssets.where((asset) => asset.id == element.key);

        newAssetList
            .add(assetEntityFiltered.first.copyWith(imageUrl: assetUrl));
      });

  

      return Right(newAssetList);
    } on FirebaseException {
      return Left(FireBaseFailure());
    } catch (error) {
      return Left(FunctionFailure());
    }
  }

  @override
  Future<Either<Failure, String>> uploadIconImageToCloudFireStorage(
      {required int projectId, required Map<int, Uint8List> iconData}) async {
    try {
      firebase_storage.Reference storageReference = storage
          .ref(projectId.toString() + storageIconSubfolder)
          .child(iconData.keys.first.toString());

      await storageReference.putData(iconData.values.first);

      //get downloadUrl for Uploaded Image
      final String iconImageUrl = await firebase_storage
          .FirebaseStorage.instance
          .ref(
              "gs://neon-mobbin.appspot.com/${projectId.toString()}$storageIconSubfolder")
          .child(iconData.keys.first.toString())
          .getDownloadURL();

      return Right(iconImageUrl);
    } on FirebaseException {
      return Left(FireBaseFailure());
    } catch (error) {
      return Left(FunctionFailure());
    }
  }

  @override
  Future<Either<Failure, Map<int, Uint8List>>> downloadAssetImageData(
      {required ProjectEntity projectEntity}) async {
    Map<int, Uint8List> assetFileCache = {};

    try {
      await Future.forEach<AssetEntity>(projectEntity.assets, (asset) async {
        final result = await firebase_storage.FirebaseStorage.instance
            .ref(projectEntity.projectId.toString() + storageAssetSubfolder)
            .child(asset.id.toString())
            .getData();

        assetFileCache.addAll({asset.id: result ?? Uint8List(0)});
      });

      return Right(assetFileCache);
    } catch (error) {
      return Left(FunctionFailure());
    }
  }
}
