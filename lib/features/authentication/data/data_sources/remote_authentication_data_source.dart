import 'package:firebase_auth/firebase_auth.dart';

class RemoteAuthenticationDataSource {
  final _auth = FirebaseAuth.instance;

  Future registerWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      final result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      final user = result.user;
      return user;
    } on Exception catch (e) {
      throw Exception();
    }
  }

  Future<UserCredential> signInWithEmailAndPassword(
      {required String email, required String password}) {
    try {
      final userCredential =
          _auth.signInWithEmailAndPassword(email: email, password: password);
      return userCredential;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print(e.code);
        throw Exception();
      } else if (e.code == 'wrong-password') {
        print(e.code);
        throw Exception();
      } else {
        throw Exception();
      }
    }
  }

  Future<void> signOut() async {
    await _auth.signOut();
  }
}
