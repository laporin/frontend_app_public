part of 'user_bloc.dart';

@freezed
class UserState with _$UserState {
  const factory UserState.initial() = _InitialUserState;
  const factory UserState.loading() = _LoadingUserState;
  const factory UserState.error(String message) = _ErrorUserState;
  const factory UserState.loaded(
    UserAuthenticatedModel user,
  ) = _LoadedAuthenticatedUserState;
}
