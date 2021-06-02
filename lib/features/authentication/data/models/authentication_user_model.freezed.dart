// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'authentication_user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthenticationUserModel _$AuthenticationUserModelFromJson(
    Map<String, dynamic> json) {
  return _AuthenticationUserModel.fromJson(json);
}

/// @nodoc
class _$AuthenticationUserModelTearOff {
  const _$AuthenticationUserModelTearOff();

  _AuthenticationUserModel call(
      {required int id,
      required String name,
      required String email,
      required String username}) {
    return _AuthenticationUserModel(
      id: id,
      name: name,
      email: email,
      username: username,
    );
  }

  AuthenticationUserModel fromJson(Map<String, Object> json) {
    return AuthenticationUserModel.fromJson(json);
  }
}

/// @nodoc
const $AuthenticationUserModel = _$AuthenticationUserModelTearOff();

/// @nodoc
mixin _$AuthenticationUserModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthenticationUserModelCopyWith<AuthenticationUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationUserModelCopyWith<$Res> {
  factory $AuthenticationUserModelCopyWith(AuthenticationUserModel value,
          $Res Function(AuthenticationUserModel) then) =
      _$AuthenticationUserModelCopyWithImpl<$Res>;
  $Res call({int id, String name, String email, String username});
}

/// @nodoc
class _$AuthenticationUserModelCopyWithImpl<$Res>
    implements $AuthenticationUserModelCopyWith<$Res> {
  _$AuthenticationUserModelCopyWithImpl(this._value, this._then);

  final AuthenticationUserModel _value;
  // ignore: unused_field
  final $Res Function(AuthenticationUserModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? username = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$AuthenticationUserModelCopyWith<$Res>
    implements $AuthenticationUserModelCopyWith<$Res> {
  factory _$AuthenticationUserModelCopyWith(_AuthenticationUserModel value,
          $Res Function(_AuthenticationUserModel) then) =
      __$AuthenticationUserModelCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name, String email, String username});
}

/// @nodoc
class __$AuthenticationUserModelCopyWithImpl<$Res>
    extends _$AuthenticationUserModelCopyWithImpl<$Res>
    implements _$AuthenticationUserModelCopyWith<$Res> {
  __$AuthenticationUserModelCopyWithImpl(_AuthenticationUserModel _value,
      $Res Function(_AuthenticationUserModel) _then)
      : super(_value, (v) => _then(v as _AuthenticationUserModel));

  @override
  _AuthenticationUserModel get _value =>
      super._value as _AuthenticationUserModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? username = freezed,
  }) {
    return _then(_AuthenticationUserModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AuthenticationUserModel implements _AuthenticationUserModel {
  const _$_AuthenticationUserModel(
      {required this.id,
      required this.name,
      required this.email,
      required this.username});

  factory _$_AuthenticationUserModel.fromJson(Map<String, dynamic> json) =>
      _$_$_AuthenticationUserModelFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String email;
  @override
  final String username;

  @override
  String toString() {
    return 'AuthenticationUserModel(id: $id, name: $name, email: $email, username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AuthenticationUserModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(username);

  @JsonKey(ignore: true)
  @override
  _$AuthenticationUserModelCopyWith<_AuthenticationUserModel> get copyWith =>
      __$AuthenticationUserModelCopyWithImpl<_AuthenticationUserModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AuthenticationUserModelToJson(this);
  }
}

abstract class _AuthenticationUserModel implements AuthenticationUserModel {
  const factory _AuthenticationUserModel(
      {required int id,
      required String name,
      required String email,
      required String username}) = _$_AuthenticationUserModel;

  factory _AuthenticationUserModel.fromJson(Map<String, dynamic> json) =
      _$_AuthenticationUserModel.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get email => throw _privateConstructorUsedError;
  @override
  String get username => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AuthenticationUserModelCopyWith<_AuthenticationUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}
