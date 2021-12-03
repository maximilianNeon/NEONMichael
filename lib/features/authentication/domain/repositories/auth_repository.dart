import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthRepository {
  Future registerWithEmailAndPassword(
      {required String email, required String password, required String name});

  Future signInWithEmailAndPassword(
      {required String email, required String password});

  Future<void> signOut();
}
