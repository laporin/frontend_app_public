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
  final String name;
  final String email;
  final String password;

  const RegisterEvent({
    required this.name,
    required this.email,
    required this.password,
  });

  @override
  List<Object?> get props => [name, email, password];
}

class LogoutEvent extends AuthenticationEvent {
  @override
  List<Object> get props => [];
}

class AuthenticationCheckEvent extends AuthenticationEvent {
  @override
  List<Object> get props => [];
}
