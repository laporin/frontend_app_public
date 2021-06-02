// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserEventTearOff {
  const _$UserEventTearOff();

  GetAuthenticatedUserEvent getAuthenticatedUserEvent() {
    return const GetAuthenticatedUserEvent();
  }
}

/// @nodoc
const $UserEvent = _$UserEventTearOff();

/// @nodoc
mixin _$UserEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAuthenticatedUserEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAuthenticatedUserEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAuthenticatedUserEvent value)
        getAuthenticatedUserEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAuthenticatedUserEvent value)?
        getAuthenticatedUserEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEventCopyWith<$Res> {
  factory $UserEventCopyWith(UserEvent value, $Res Function(UserEvent) then) =
      _$UserEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserEventCopyWithImpl<$Res> implements $UserEventCopyWith<$Res> {
  _$UserEventCopyWithImpl(this._value, this._then);

  final UserEvent _value;
  // ignore: unused_field
  final $Res Function(UserEvent) _then;
}

/// @nodoc
abstract class $GetAuthenticatedUserEventCopyWith<$Res> {
  factory $GetAuthenticatedUserEventCopyWith(GetAuthenticatedUserEvent value,
          $Res Function(GetAuthenticatedUserEvent) then) =
      _$GetAuthenticatedUserEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetAuthenticatedUserEventCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res>
    implements $GetAuthenticatedUserEventCopyWith<$Res> {
  _$GetAuthenticatedUserEventCopyWithImpl(GetAuthenticatedUserEvent _value,
      $Res Function(GetAuthenticatedUserEvent) _then)
      : super(_value, (v) => _then(v as GetAuthenticatedUserEvent));

  @override
  GetAuthenticatedUserEvent get _value =>
      super._value as GetAuthenticatedUserEvent;
}

/// @nodoc

class _$GetAuthenticatedUserEvent implements GetAuthenticatedUserEvent {
  const _$GetAuthenticatedUserEvent();

  @override
  String toString() {
    return 'UserEvent.getAuthenticatedUserEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetAuthenticatedUserEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAuthenticatedUserEvent,
  }) {
    return getAuthenticatedUserEvent();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAuthenticatedUserEvent,
    required TResult orElse(),
  }) {
    if (getAuthenticatedUserEvent != null) {
      return getAuthenticatedUserEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAuthenticatedUserEvent value)
        getAuthenticatedUserEvent,
  }) {
    return getAuthenticatedUserEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAuthenticatedUserEvent value)?
        getAuthenticatedUserEvent,
    required TResult orElse(),
  }) {
    if (getAuthenticatedUserEvent != null) {
      return getAuthenticatedUserEvent(this);
    }
    return orElse();
  }
}

abstract class GetAuthenticatedUserEvent implements UserEvent {
  const factory GetAuthenticatedUserEvent() = _$GetAuthenticatedUserEvent;
}

/// @nodoc
class _$UserStateTearOff {
  const _$UserStateTearOff();

  _InitialUserState initial() {
    return const _InitialUserState();
  }

  _LoadingUserState loading() {
    return const _LoadingUserState();
  }

  _ErrorUserState error(String message) {
    return _ErrorUserState(
      message,
    );
  }

  _LoadedAuthenticatedUserState loaded(UserAuthenticatedModel user) {
    return _LoadedAuthenticatedUserState(
      user,
    );
  }
}

/// @nodoc
const $UserState = _$UserStateTearOff();

/// @nodoc
mixin _$UserState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(UserAuthenticatedModel user) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(UserAuthenticatedModel user)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialUserState value) initial,
    required TResult Function(_LoadingUserState value) loading,
    required TResult Function(_ErrorUserState value) error,
    required TResult Function(_LoadedAuthenticatedUserState value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialUserState value)? initial,
    TResult Function(_LoadingUserState value)? loading,
    TResult Function(_ErrorUserState value)? error,
    TResult Function(_LoadedAuthenticatedUserState value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res> implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  final UserState _value;
  // ignore: unused_field
  final $Res Function(UserState) _then;
}

/// @nodoc
abstract class _$InitialUserStateCopyWith<$Res> {
  factory _$InitialUserStateCopyWith(
          _InitialUserState value, $Res Function(_InitialUserState) then) =
      __$InitialUserStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialUserStateCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res>
    implements _$InitialUserStateCopyWith<$Res> {
  __$InitialUserStateCopyWithImpl(
      _InitialUserState _value, $Res Function(_InitialUserState) _then)
      : super(_value, (v) => _then(v as _InitialUserState));

  @override
  _InitialUserState get _value => super._value as _InitialUserState;
}

/// @nodoc

class _$_InitialUserState implements _InitialUserState {
  const _$_InitialUserState();

  @override
  String toString() {
    return 'UserState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InitialUserState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(UserAuthenticatedModel user) loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(UserAuthenticatedModel user)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialUserState value) initial,
    required TResult Function(_LoadingUserState value) loading,
    required TResult Function(_ErrorUserState value) error,
    required TResult Function(_LoadedAuthenticatedUserState value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialUserState value)? initial,
    TResult Function(_LoadingUserState value)? loading,
    TResult Function(_ErrorUserState value)? error,
    TResult Function(_LoadedAuthenticatedUserState value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialUserState implements UserState {
  const factory _InitialUserState() = _$_InitialUserState;
}

/// @nodoc
abstract class _$LoadingUserStateCopyWith<$Res> {
  factory _$LoadingUserStateCopyWith(
          _LoadingUserState value, $Res Function(_LoadingUserState) then) =
      __$LoadingUserStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingUserStateCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res>
    implements _$LoadingUserStateCopyWith<$Res> {
  __$LoadingUserStateCopyWithImpl(
      _LoadingUserState _value, $Res Function(_LoadingUserState) _then)
      : super(_value, (v) => _then(v as _LoadingUserState));

  @override
  _LoadingUserState get _value => super._value as _LoadingUserState;
}

/// @nodoc

class _$_LoadingUserState implements _LoadingUserState {
  const _$_LoadingUserState();

  @override
  String toString() {
    return 'UserState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadingUserState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(UserAuthenticatedModel user) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(UserAuthenticatedModel user)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialUserState value) initial,
    required TResult Function(_LoadingUserState value) loading,
    required TResult Function(_ErrorUserState value) error,
    required TResult Function(_LoadedAuthenticatedUserState value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialUserState value)? initial,
    TResult Function(_LoadingUserState value)? loading,
    TResult Function(_ErrorUserState value)? error,
    TResult Function(_LoadedAuthenticatedUserState value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingUserState implements UserState {
  const factory _LoadingUserState() = _$_LoadingUserState;
}

/// @nodoc
abstract class _$ErrorUserStateCopyWith<$Res> {
  factory _$ErrorUserStateCopyWith(
          _ErrorUserState value, $Res Function(_ErrorUserState) then) =
      __$ErrorUserStateCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$ErrorUserStateCopyWithImpl<$Res> extends _$UserStateCopyWithImpl<$Res>
    implements _$ErrorUserStateCopyWith<$Res> {
  __$ErrorUserStateCopyWithImpl(
      _ErrorUserState _value, $Res Function(_ErrorUserState) _then)
      : super(_value, (v) => _then(v as _ErrorUserState));

  @override
  _ErrorUserState get _value => super._value as _ErrorUserState;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_ErrorUserState(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ErrorUserState implements _ErrorUserState {
  const _$_ErrorUserState(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'UserState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ErrorUserState &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$ErrorUserStateCopyWith<_ErrorUserState> get copyWith =>
      __$ErrorUserStateCopyWithImpl<_ErrorUserState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(UserAuthenticatedModel user) loaded,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(UserAuthenticatedModel user)? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialUserState value) initial,
    required TResult Function(_LoadingUserState value) loading,
    required TResult Function(_ErrorUserState value) error,
    required TResult Function(_LoadedAuthenticatedUserState value) loaded,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialUserState value)? initial,
    TResult Function(_LoadingUserState value)? loading,
    TResult Function(_ErrorUserState value)? error,
    TResult Function(_LoadedAuthenticatedUserState value)? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorUserState implements UserState {
  const factory _ErrorUserState(String message) = _$_ErrorUserState;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ErrorUserStateCopyWith<_ErrorUserState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadedAuthenticatedUserStateCopyWith<$Res> {
  factory _$LoadedAuthenticatedUserStateCopyWith(
          _LoadedAuthenticatedUserState value,
          $Res Function(_LoadedAuthenticatedUserState) then) =
      __$LoadedAuthenticatedUserStateCopyWithImpl<$Res>;
  $Res call({UserAuthenticatedModel user});

  $UserAuthenticatedModelCopyWith<$Res> get user;
}

/// @nodoc
class __$LoadedAuthenticatedUserStateCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res>
    implements _$LoadedAuthenticatedUserStateCopyWith<$Res> {
  __$LoadedAuthenticatedUserStateCopyWithImpl(
      _LoadedAuthenticatedUserState _value,
      $Res Function(_LoadedAuthenticatedUserState) _then)
      : super(_value, (v) => _then(v as _LoadedAuthenticatedUserState));

  @override
  _LoadedAuthenticatedUserState get _value =>
      super._value as _LoadedAuthenticatedUserState;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_LoadedAuthenticatedUserState(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserAuthenticatedModel,
    ));
  }

  @override
  $UserAuthenticatedModelCopyWith<$Res> get user {
    return $UserAuthenticatedModelCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$_LoadedAuthenticatedUserState implements _LoadedAuthenticatedUserState {
  const _$_LoadedAuthenticatedUserState(this.user);

  @override
  final UserAuthenticatedModel user;

  @override
  String toString() {
    return 'UserState.loaded(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadedAuthenticatedUserState &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  _$LoadedAuthenticatedUserStateCopyWith<_LoadedAuthenticatedUserState>
      get copyWith => __$LoadedAuthenticatedUserStateCopyWithImpl<
          _LoadedAuthenticatedUserState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(UserAuthenticatedModel user) loaded,
  }) {
    return loaded(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(UserAuthenticatedModel user)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialUserState value) initial,
    required TResult Function(_LoadingUserState value) loading,
    required TResult Function(_ErrorUserState value) error,
    required TResult Function(_LoadedAuthenticatedUserState value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialUserState value)? initial,
    TResult Function(_LoadingUserState value)? loading,
    TResult Function(_ErrorUserState value)? error,
    TResult Function(_LoadedAuthenticatedUserState value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _LoadedAuthenticatedUserState implements UserState {
  const factory _LoadedAuthenticatedUserState(UserAuthenticatedModel user) =
      _$_LoadedAuthenticatedUserState;

  UserAuthenticatedModel get user => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadedAuthenticatedUserStateCopyWith<_LoadedAuthenticatedUserState>
      get copyWith => throw _privateConstructorUsedError;
}
