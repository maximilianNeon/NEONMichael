import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {

  @override
  List<Object> get props => [];
}

class FireBaseFailure extends Failure {}
class RepositoryFailure extends Failure {}
class FunctionFailure extends Failure {}
class UseCaseFailure extends Failure {}
