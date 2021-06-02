// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'user_authenticated_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserAuthenticatedModel _$UserAuthenticatedModelFromJson(
    Map<String, dynamic> json) {
  return _UserAuthenticatedModel.fromJson(json);
}

/// @nodoc
class _$UserAuthenticatedModelTearOff {
  const _$UserAuthenticatedModelTearOff();

  _UserAuthenticatedModel call(
      {required int id,
      required String name,
      required String email,
      required String username}) {
    return _UserAuthenticatedModel(
      id: id,
      name: name,
      email: email,
      username: username,
    );
  }

  UserAuthenticatedModel fromJson(Map<String, Object> json) {
    return UserAuthenticatedModel.fromJson(json);
  }
}

/// @nodoc
const $UserAuthenticatedModel = _$UserAuthenticatedModelTearOff();

/// @nodoc
mixin _$UserAuthenticatedModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserAuthenticatedModelCopyWith<UserAuthenticatedModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserAuthenticatedModelCopyWith<$Res> {
  factory $UserAuthenticatedModelCopyWith(UserAuthenticatedModel value,
          $Res Function(UserAuthenticatedModel) then) =
      _$UserAuthenticatedModelCopyWithImpl<$Res>;
  $Res call({int id, String name, String email, String username});
}

/// @nodoc
class _$UserAuthenticatedModelCopyWithImpl<$Res>
    implements $UserAuthenticatedModelCopyWith<$Res> {
  _$UserAuthenticatedModelCopyWithImpl(this._value, this._then);

  final UserAuthenticatedModel _value;
  // ignore: unused_field
  final $Res Function(UserAuthenticatedModel) _then;

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
abstract class _$UserAuthenticatedModelCopyWith<$Res>
    implements $UserAuthenticatedModelCopyWith<$Res> {
  factory _$UserAuthenticatedModelCopyWith(_UserAuthenticatedModel value,
          $Res Function(_UserAuthenticatedModel) then) =
      __$UserAuthenticatedModelCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name, String email, String username});
}

/// @nodoc
class __$UserAuthenticatedModelCopyWithImpl<$Res>
    extends _$UserAuthenticatedModelCopyWithImpl<$Res>
    implements _$UserAuthenticatedModelCopyWith<$Res> {
  __$UserAuthenticatedModelCopyWithImpl(_UserAuthenticatedModel _value,
      $Res Function(_UserAuthenticatedModel) _then)
      : super(_value, (v) => _then(v as _UserAuthenticatedModel));

  @override
  _UserAuthenticatedModel get _value => super._value as _UserAuthenticatedModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? username = freezed,
  }) {
    return _then(_UserAuthenticatedModel(
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
class _$_UserAuthenticatedModel implements _UserAuthenticatedModel {
  const _$_UserAuthenticatedModel(
      {required this.id,
      required this.name,
      required this.email,
      required this.username});

  factory _$_UserAuthenticatedModel.fromJson(Map<String, dynamic> json) =>
      _$_$_UserAuthenticatedModelFromJson(json);

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
    return 'UserAuthenticatedModel(id: $id, name: $name, email: $email, username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserAuthenticatedModel &&
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
  _$UserAuthenticatedModelCopyWith<_UserAuthenticatedModel> get copyWith =>
      __$UserAuthenticatedModelCopyWithImpl<_UserAuthenticatedModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserAuthenticatedModelToJson(this);
  }
}

abstract class _UserAuthenticatedModel implements UserAuthenticatedModel {
  const factory _UserAuthenticatedModel(
      {required int id,
      required String name,
      required String email,
      required String username}) = _$_UserAuthenticatedModel;

  factory _UserAuthenticatedModel.fromJson(Map<String, dynamic> json) =
      _$_UserAuthenticatedModel.fromJson;

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
  _$UserAuthenticatedModelCopyWith<_UserAuthenticatedModel> get copyWith =>
      throw _privateConstructorUsedError;
}
