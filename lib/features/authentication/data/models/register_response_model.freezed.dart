// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'register_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RegisterResponseModel _$RegisterResponseModelFromJson(
    Map<String, dynamic> json) {
  return _RegisterResponseModel.fromJson(json);
}

/// @nodoc
class _$RegisterResponseModelTearOff {
  const _$RegisterResponseModelTearOff();

  _RegisterResponseModel call(
      {required String accessToken,
      required String tokenType,
      required AuthenticationUserModel user}) {
    return _RegisterResponseModel(
      accessToken: accessToken,
      tokenType: tokenType,
      user: user,
    );
  }

  RegisterResponseModel fromJson(Map<String, Object> json) {
    return RegisterResponseModel.fromJson(json);
  }
}

/// @nodoc
const $RegisterResponseModel = _$RegisterResponseModelTearOff();

/// @nodoc
mixin _$RegisterResponseModel {
  String get accessToken => throw _privateConstructorUsedError;
  String get tokenType => throw _privateConstructorUsedError;
  AuthenticationUserModel get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisterResponseModelCopyWith<RegisterResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterResponseModelCopyWith<$Res> {
  factory $RegisterResponseModelCopyWith(RegisterResponseModel value,
          $Res Function(RegisterResponseModel) then) =
      _$RegisterResponseModelCopyWithImpl<$Res>;
  $Res call(
      {String accessToken, String tokenType, AuthenticationUserModel user});

  $AuthenticationUserModelCopyWith<$Res> get user;
}

/// @nodoc
class _$RegisterResponseModelCopyWithImpl<$Res>
    implements $RegisterResponseModelCopyWith<$Res> {
  _$RegisterResponseModelCopyWithImpl(this._value, this._then);

  final RegisterResponseModel _value;
  // ignore: unused_field
  final $Res Function(RegisterResponseModel) _then;

  @override
  $Res call({
    Object? accessToken = freezed,
    Object? tokenType = freezed,
    Object? user = freezed,
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
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AuthenticationUserModel,
    ));
  }

  @override
  $AuthenticationUserModelCopyWith<$Res> get user {
    return $AuthenticationUserModelCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$RegisterResponseModelCopyWith<$Res>
    implements $RegisterResponseModelCopyWith<$Res> {
  factory _$RegisterResponseModelCopyWith(_RegisterResponseModel value,
          $Res Function(_RegisterResponseModel) then) =
      __$RegisterResponseModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String accessToken, String tokenType, AuthenticationUserModel user});

  @override
  $AuthenticationUserModelCopyWith<$Res> get user;
}

/// @nodoc
class __$RegisterResponseModelCopyWithImpl<$Res>
    extends _$RegisterResponseModelCopyWithImpl<$Res>
    implements _$RegisterResponseModelCopyWith<$Res> {
  __$RegisterResponseModelCopyWithImpl(_RegisterResponseModel _value,
      $Res Function(_RegisterResponseModel) _then)
      : super(_value, (v) => _then(v as _RegisterResponseModel));

  @override
  _RegisterResponseModel get _value => super._value as _RegisterResponseModel;

  @override
  $Res call({
    Object? accessToken = freezed,
    Object? tokenType = freezed,
    Object? user = freezed,
  }) {
    return _then(_RegisterResponseModel(
      accessToken: accessToken == freezed
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      tokenType: tokenType == freezed
          ? _value.tokenType
          : tokenType // ignore: cast_nullable_to_non_nullable
              as String,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AuthenticationUserModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RegisterResponseModel implements _RegisterResponseModel {
  const _$_RegisterResponseModel(
      {required this.accessToken, required this.tokenType, required this.user});

  factory _$_RegisterResponseModel.fromJson(Map<String, dynamic> json) =>
      _$_$_RegisterResponseModelFromJson(json);

  @override
  final String accessToken;
  @override
  final String tokenType;
  @override
  final AuthenticationUserModel user;

  @override
  String toString() {
    return 'RegisterResponseModel(accessToken: $accessToken, tokenType: $tokenType, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RegisterResponseModel &&
            (identical(other.accessToken, accessToken) ||
                const DeepCollectionEquality()
                    .equals(other.accessToken, accessToken)) &&
            (identical(other.tokenType, tokenType) ||
                const DeepCollectionEquality()
                    .equals(other.tokenType, tokenType)) &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(accessToken) ^
      const DeepCollectionEquality().hash(tokenType) ^
      const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  _$RegisterResponseModelCopyWith<_RegisterResponseModel> get copyWith =>
      __$RegisterResponseModelCopyWithImpl<_RegisterResponseModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RegisterResponseModelToJson(this);
  }
}

abstract class _RegisterResponseModel implements RegisterResponseModel {
  const factory _RegisterResponseModel(
      {required String accessToken,
      required String tokenType,
      required AuthenticationUserModel user}) = _$_RegisterResponseModel;

  factory _RegisterResponseModel.fromJson(Map<String, dynamic> json) =
      _$_RegisterResponseModel.fromJson;

  @override
  String get accessToken => throw _privateConstructorUsedError;
  @override
  String get tokenType => throw _privateConstructorUsedError;
  @override
  AuthenticationUserModel get user => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RegisterResponseModelCopyWith<_RegisterResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}
