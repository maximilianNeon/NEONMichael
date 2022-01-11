import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:neon_web/features/authentication/domain/usecase/login.dart';

part 'authentification_event.dart';
part 'authentification_state.dart';
part 'authentification_bloc.freezed.dart';

@lazySingleton
class AuthentificationBloc
    extends Bloc<AuthentificationEvent, AuthentificationState> {
  Login login;

  AuthentificationBloc({required this.login}) : super(_Initial()) {
    on<_Login>((event, emit) async {
      final result = await login.call(
          params: LoginParams(email: event.email, password: event.password));
      
      emit(result.fold((l) => _Initial(), (r) => _Auth()));
    });
  }
}
