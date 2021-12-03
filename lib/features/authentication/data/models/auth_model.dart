import 'package:neon_web/features/authentication/domain/entities/auth_entity.dart';

class AuthModel extends AuthEntity {
  AuthModel(
      {required String email,
      required String password,
      required String name,
      required String id})
      : super(email: email, id: id, name: name, password: password);
}
