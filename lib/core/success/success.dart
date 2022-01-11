import 'package:equatable/equatable.dart';

abstract class Success extends Equatable {

  @override
  List<Object> get props => [];
}

// General failures
class FunctionSuccess extends Success {}
class RepositorySuccess extends Success {}
class FireBaseSuccess extends Success {}
class UseCaseSuccess extends Success {}