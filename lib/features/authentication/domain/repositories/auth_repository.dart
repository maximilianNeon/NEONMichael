import 'package:firebase_auth/firebase_auth.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import 'package:neon_web/core/error/failure.dart';
import 'package:neon_web/core/success/success.dart';


abstract class AuthRepository {
  Future<Either<Failure, Success>> login(
      {required String email, required String password});
}
