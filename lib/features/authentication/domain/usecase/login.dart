import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:neon_web/core/domain/usecases/usecase.dart';
import 'package:neon_web/core/error/failure.dart';
import 'package:neon_web/core/success/success.dart';
import 'package:neon_web/features/authentication/domain/repositories/auth_repository.dart';

@injectable
class Login extends UseCaseInternal<Future, LoginParams> {
  AuthRepository authRepository;

  Login({required this.authRepository});

  @override
  Future<Either<Failure, Success>> call({required LoginParams params}) async {
    try {
      final result = await authRepository.login(
          email: params.email, password: params.password);

      return result.fold((l) => Left(UseCaseFailure()), (r) => Right(UseCaseSuccess()));
    } catch (error) {
      return Left(UseCaseFailure());
    }
  }
}

class LoginParams extends Equatable {
  final String email;
  final String password;

  LoginParams({required this.email, required this.password});

  @override
  List<Object?> get props => [email, password];
}
