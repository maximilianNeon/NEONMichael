import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:neon_web/core/error/failure.dart';
import 'package:neon_web/core/success/success.dart';
import 'package:dartz/dartz.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

@injectable
class FireBaseRemoteDataSource {
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  final firestoreInstance = FirebaseFirestore.instance;

  Future<Either<Failure, Success>> firebaseLogin(
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

 // Future<Either<Failure, Success>> uploadProject() async {
//
//
//
 //   try {
//
 //     
 //   } on FirebaseException catch (error) {
 //     print(error);
 //   }
 // }
}
