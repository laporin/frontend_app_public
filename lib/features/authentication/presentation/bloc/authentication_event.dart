part of 'authentication_bloc.dart';

abstract class AuthenticationEvent extends Equatable {
  const AuthenticationEvent();
}

class LoginEvent extends AuthenticationEvent {
  final LoginRequestModel data;

  LoginEvent({
    required this.data,
  });

  @override
  List<Object?> get props => [data];
}

class RegisterEvent extends AuthenticationEvent {
  final RegisterRequestModel data;

  const RegisterEvent({
    required this.data,
  });

  @override
  List<Object?> get props => [data];
}

class LogoutEvent extends AuthenticationEvent {
  @override
  List<Object> get props => [];
}

class AuthenticationCheckEvent extends AuthenticationEvent {
  @override
  List<Object> get props => [];
}

class GetAuthenticatedUserEvent extends AuthenticationEvent {
  @override
  List<Object> get props => [];
}
