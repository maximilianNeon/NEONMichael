import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:neon_web/core/error/failure.dart';
import 'package:neon_web/core/success/success.dart';
import 'package:neon_web/features/authentication/data/data_sources/remote_authentication_data_source.dart';
import 'package:neon_web/features/authentication/domain/repositories/auth_repository.dart';

@Injectable(as: AuthRepository )
class AuthRepositoryImpl extends AuthRepository {
  RemoteAuthenticationDataSourceImpl authRemoteDataSource;

  AuthRepositoryImpl({
    required this.authRemoteDataSource,
  });

  @override
  Future<Either<Failure, Success>> login(
      {required String email, required String password}) async {
    try {
      final result = await authRemoteDataSource.login(email: email, password: password);
      
     return result.fold((l) => Left(FunctionFailure()), (r) => Right(FunctionSuccess()));
     
    } catch (error) {
      return Left(FunctionFailure());
    }
  }
}
