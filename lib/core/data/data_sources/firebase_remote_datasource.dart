import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:neon_web/core/error/failure.dart';
import 'package:neon_web/core/success/success.dart';
import 'package:dartz/dartz.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

abstract class FireBaseRemoteDataSource {
  Future<Either<Failure, Success>> firebaseSignIn(
      {required String email, required String password});
  Future<Either<Failure, Success>> firebaseSignOut();

  Future<Either<Failure, Success>> uploadSingleProjectToDB({required String collectionName ,required Map<String,dynamic> project});
  Future<Either<Failure, Success>> downloadAllProjects();
  Future<Either<Failure, Success>> updateSingleProject();
}

@injectable
class FireBaseRemoteDataSourceImpl extends FireBaseRemoteDataSource {
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  final firestoreInstance = FirebaseFirestore.instance;

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
  Future<Either<Failure, Success>> downloadAllProjects() {
    // TODO: implement downloadAllProjects
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Success>> firebaseSignOut() {
    // TODO: implement firebaseSignOut
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Success>> updateSingleProject() {
    // TODO: implement updateSingleProject
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Success>> uploadSingleProjectToDB({required String collectionName , required Map<String,dynamic> project}) async {
    print("upload");
    print(collectionName);
    print(project);
    
    try {
      final result =  await firestoreInstance.collection(collectionName).add(project
      

    
      
    );
      return Right(FireBaseSuccess());

    } on FirebaseException catch (error){
      print("FireBaseError $error");

      return Left(FireBaseFailure());
    }
   
  }
}
