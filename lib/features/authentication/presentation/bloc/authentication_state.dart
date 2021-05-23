part of 'authentication_bloc.dart';
abstract class AuthenticationState extends Equatable {
  const AuthenticationState();
}

class AuthenticationInitialState extends AuthenticationState {
  @override
  List<Object> get props => [];
}

class AuthenticatedState extends AuthenticationState {
  @override
  List<Object> get props => [];
}

class AuthenticationLoadingState extends AuthenticationState {
  @override
  List<Object> get props => [];
}

class UnauthenticatedState extends AuthenticationState {
  @override
  List<Object> get props => [];
}

class ErrorAuthenticatedState extends AuthenticationState {
  @override
  List<Object> get props => [];
}
