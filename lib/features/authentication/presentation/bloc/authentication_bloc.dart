import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:frontend_app_public/core/usecases/usecase.dart';
import 'package:frontend_app_public/features/authentication/data/models/login_request_model.dart';
import 'package:frontend_app_public/features/authentication/domain/usecases/check_authentication_usecase.dart';
import 'package:frontend_app_public/features/authentication/domain/usecases/login_authentication_usecase.dart';
import 'package:frontend_app_public/features/authentication/domain/usecases/register_authentication_usecase.dart';
import 'package:injectable/injectable.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';

@injectable
class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  final LoginAuthenticationUsecase loginUsecase;
  final RegisterAuthenticationUsecase registerUsecase;
  final CheckAuthenticationUsecase checkAuthUsecase;

  AuthenticationBloc({
    required this.loginUsecase,
    required this.registerUsecase,
    required this.checkAuthUsecase,
  }) : super(AuthenticationInitialState());

  @override
  Stream<AuthenticationState> mapEventToState(
    AuthenticationEvent event,
  ) async* {
    if (event is LoginEvent) {
      yield AuthenticationLoadingState();
      final failureOrResponse = await loginUsecase(event.data);
      yield failureOrResponse.fold(
        (failure) => ErrorAuthenticatedState(),
        (response) => AuthenticatedState(),
      );
    } else if (event is RegisterEvent) {
      //
    } else if (event is LogoutEvent) {
      //
    } else if (event is AuthenticationCheckEvent) {
      final failureOrResponse = await checkAuthUsecase(NoParams());
      yield failureOrResponse.fold(
        (failure) => ErrorAuthenticatedState(),
        (right) => right ? AuthenticatedState() : UnauthenticatedState(),
      );
    } else {
      //
    }
  }
}
