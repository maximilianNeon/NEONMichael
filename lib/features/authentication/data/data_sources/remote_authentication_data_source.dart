import 'package:injectable/injectable.dart';
import 'package:neon_web/core/data/data_sources/firebase_remote_datasource.dart';
import 'package:dartz/dartz.dart';
import 'package:neon_web/core/error/failure.dart';
import 'package:neon_web/core/success/success.dart';

abstract class RemoteAuthentificationDataSource {
  Future<Either<Failure,Success>> login({required String email, required String password});
}




@injectable
class RemoteAuthenticationDataSourceImpl
    extends RemoteAuthentificationDataSource {
  
  FireBaseRemoteDataSourceImpl fireBaseRemoteDataSourceImpl;

  RemoteAuthenticationDataSourceImpl(this.fireBaseRemoteDataSourceImpl);

  @override
  Future<Either<Failure,Success>> login({required String email, required String password}) async {
    try{
        final result = await fireBaseRemoteDataSourceImpl.firebaseSignIn(email: email, password: password);
        
       return result.fold(
          (l) => Left(RepositoryFailure()), (r) => Right(RepositorySuccess()) 
        );
       
    }catch (e){
      return Left(RepositoryFailure());
    }
   }
    
}
