import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:neon_web/core/error/failure.dart';

abstract class UseCaseExternal<Type,Params> {
  Future<Either<Failure, Type>> call(Params params);
}
abstract class UseCaseInternal<Type,Params> {
  Type call(Params params);
}



class NoParams extends Equatable {
  @override
  List<Object?> get props => [];
}