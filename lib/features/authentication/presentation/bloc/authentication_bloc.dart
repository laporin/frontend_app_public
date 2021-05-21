import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
part 'authentication_event.dart';
part 'authentication_state.dart';
class AuthenticationBloc extends Bloc<AuthenticationEvent, AuthenticationState> {
  // final BackendAuthenticationRepository authenticationRepository;

  AuthenticationBloc() : super(AuthenticationInitialState());

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
