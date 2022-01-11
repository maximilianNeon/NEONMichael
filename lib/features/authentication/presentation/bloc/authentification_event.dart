part of 'authentification_bloc.dart';

@freezed
class AuthentificationEvent with _$AuthentificationEvent {
  const factory AuthentificationEvent.login({required String email, required String password}) = _Login;
}