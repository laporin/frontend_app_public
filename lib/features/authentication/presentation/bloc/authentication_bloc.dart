import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:frontend_app_public/features/authentication/domain/usecases/login_authentication_usecase.dart';
import 'package:frontend_app_public/features/authentication/domain/usecases/register_authentication_usecase.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  final LoginAuthenticationUsecase loginUsecase;
  final RegisterAuthenticationUsecase registerUsecase;

  AuthenticationBloc({
    required this.loginUsecase,
    required this.registerUsecase,
  }) : super(AuthenticationInitialState());

  @override
  Stream<AuthenticationState> mapEventToState(
    AuthenticationEvent event,
  ) async* {
    if (event is LoginEvent) {
      //
    } else if (event is RegisterEvent) {
      //
    } else if (event is LogoutEvent) {
      //
    } else if (event is AuthenticationCheckEvent) {
      //
    } else {
      //
    }
  }
}
