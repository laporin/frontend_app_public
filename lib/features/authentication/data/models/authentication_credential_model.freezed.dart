// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'authentication_credential_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthenticationCredentialModel _$AuthenticationCredentialModelFromJson(
    Map<String, dynamic> json) {
  return _AuthenticationCredentialModel.fromJson(json);
}

/// @nodoc
class _$AuthenticationCredentialModelTearOff {
  const _$AuthenticationCredentialModelTearOff();

  _AuthenticationCredentialModel call(
      {required String accessToken,
      required String tokenType,
      required int userId}) {
    return _AuthenticationCredentialModel(
      accessToken: accessToken,
      tokenType: tokenType,
      userId: userId,
    );
  }

  AuthenticationCredentialModel fromJson(Map<String, Object> json) {
    return AuthenticationCredentialModel.fromJson(json);
  }
}

/// @nodoc
const $AuthenticationCredentialModel = _$AuthenticationCredentialModelTearOff();

/// @nodoc
mixin _$AuthenticationCredentialModel {
  String get accessToken => throw _privateConstructorUsedError;
  String get tokenType => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthenticationCredentialModelCopyWith<AuthenticationCredentialModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationCredentialModelCopyWith<$Res> {
  factory $AuthenticationCredentialModelCopyWith(
          AuthenticationCredentialModel value,
          $Res Function(AuthenticationCredentialModel) then) =
      _$AuthenticationCredentialModelCopyWithImpl<$Res>;
  $Res call({String accessToken, String tokenType, int userId});
}

/// @nodoc
class _$AuthenticationCredentialModelCopyWithImpl<$Res>
    implements $AuthenticationCredentialModelCopyWith<$Res> {
  _$AuthenticationCredentialModelCopyWithImpl(this._value, this._then);

  final AuthenticationCredentialModel _value;
  // ignore: unused_field
  final $Res Function(AuthenticationCredentialModel) _then;

  @override
  $Res call({
    Object? accessToken = freezed,
    Object? tokenType = freezed,
    Object? userId = freezed,
  }) {
    return _then(_value.copyWith(
      accessToken: accessToken == freezed
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      tokenType: tokenType == freezed
          ? _value.tokenType
          : tokenType // ignore: cast_nullable_to_non_nullable
              as String,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$AuthenticationCredentialModelCopyWith<$Res>
    implements $AuthenticationCredentialModelCopyWith<$Res> {
  factory _$AuthenticationCredentialModelCopyWith(
          _AuthenticationCredentialModel value,
          $Res Function(_AuthenticationCredentialModel) then) =
      __$AuthenticationCredentialModelCopyWithImpl<$Res>;
  @override
  $Res call({String accessToken, String tokenType, int userId});
}

/// @nodoc
class __$AuthenticationCredentialModelCopyWithImpl<$Res>
    extends _$AuthenticationCredentialModelCopyWithImpl<$Res>
    implements _$AuthenticationCredentialModelCopyWith<$Res> {
  __$AuthenticationCredentialModelCopyWithImpl(
      _AuthenticationCredentialModel _value,
      $Res Function(_AuthenticationCredentialModel) _then)
      : super(_value, (v) => _then(v as _AuthenticationCredentialModel));

  @override
  _AuthenticationCredentialModel get _value =>
      super._value as _AuthenticationCredentialModel;

  @override
  $Res call({
    Object? accessToken = freezed,
    Object? tokenType = freezed,
    Object? userId = freezed,
  }) {
    return _then(_AuthenticationCredentialModel(
      accessToken: accessToken == freezed
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      tokenType: tokenType == freezed
          ? _value.tokenType
          : tokenType // ignore: cast_nullable_to_non_nullable
              as String,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AuthenticationCredentialModel
    implements _AuthenticationCredentialModel {
  const _$_AuthenticationCredentialModel(
      {required this.accessToken,
      required this.tokenType,
      required this.userId});

  factory _$_AuthenticationCredentialModel.fromJson(
          Map<String, dynamic> json) =>
      _$_$_AuthenticationCredentialModelFromJson(json);

  @override
  final String accessToken;
  @override
  final String tokenType;
  @override
  final int userId;

  @override
  String toString() {
    return 'AuthenticationCredentialModel(accessToken: $accessToken, tokenType: $tokenType, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AuthenticationCredentialModel &&
            (identical(other.accessToken, accessToken) ||
                const DeepCollectionEquality()
                    .equals(other.accessToken, accessToken)) &&
            (identical(other.tokenType, tokenType) ||
                const DeepCollectionEquality()
                    .equals(other.tokenType, tokenType)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(accessToken) ^
      const DeepCollectionEquality().hash(tokenType) ^
      const DeepCollectionEquality().hash(userId);

  @JsonKey(ignore: true)
  @override
  _$AuthenticationCredentialModelCopyWith<_AuthenticationCredentialModel>
      get copyWith => __$AuthenticationCredentialModelCopyWithImpl<
          _AuthenticationCredentialModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AuthenticationCredentialModelToJson(this);
  }
}

abstract class _AuthenticationCredentialModel
    implements AuthenticationCredentialModel {
  const factory _AuthenticationCredentialModel(
      {required String accessToken,
      required String tokenType,
      required int userId}) = _$_AuthenticationCredentialModel;

  factory _AuthenticationCredentialModel.fromJson(Map<String, dynamic> json) =
      _$_AuthenticationCredentialModel.fromJson;

  @override
  String get accessToken => throw _privateConstructorUsedError;
  @override
  String get tokenType => throw _privateConstructorUsedError;
  @override
  int get userId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AuthenticationCredentialModelCopyWith<_AuthenticationCredentialModel>
      get copyWith => throw _privateConstructorUsedError;
}
