import 'package:neon_web/features/authentication/data/data_sources/remote_authentication_data_source.dart';
import 'package:neon_web/features/authentication/domain/repositories/auth_repository.dart';

class AuthRepositoryImpl extends AuthRepository {
  RemoteAuthenticationDataSource authDataSource;

  AuthRepositoryImpl({
    required this.authDataSource,
  });

  @override
  Future registerWithEmailAndPassword(
      {required String email,
      required String password,
      required String name}) async {
    await authDataSource.registerWithEmailAndPassword(
        email: email, password: password);
  }

  @override
  Future signInWithEmailAndPassword(
      {required String email, required String password}) async {
    await authDataSource.signInWithEmailAndPassword(
        email: email, password: password);
  }

  @override
  Future<void> signOut() async {
    await authDataSource.signOut();
  }
}
