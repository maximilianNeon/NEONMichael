part of 'authentification_bloc.dart';

@freezed
class AuthentificationState with _$AuthentificationState {
  const factory AuthentificationState.initial() = _Initial;
  const factory AuthentificationState.auth() = _Auth;
 
}
