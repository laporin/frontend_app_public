// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'register_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RegisterRequestModel _$RegisterRequestModelFromJson(Map<String, dynamic> json) {
  return _RegisterRequestModel.fromJson(json);
}

/// @nodoc
class _$RegisterRequestModelTearOff {
  const _$RegisterRequestModelTearOff();

  _RegisterRequestModel call(
      {required String name, required String email, required String password}) {
    return _RegisterRequestModel(
      name: name,
      email: email,
      password: password,
    );
  }

  RegisterRequestModel fromJson(Map<String, Object> json) {
    return RegisterRequestModel.fromJson(json);
  }
}

/// @nodoc
const $RegisterRequestModel = _$RegisterRequestModelTearOff();

/// @nodoc
mixin _$RegisterRequestModel {
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisterRequestModelCopyWith<RegisterRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterRequestModelCopyWith<$Res> {
  factory $RegisterRequestModelCopyWith(RegisterRequestModel value,
          $Res Function(RegisterRequestModel) then) =
      _$RegisterRequestModelCopyWithImpl<$Res>;
  $Res call({String name, String email, String password});
}

/// @nodoc
class _$RegisterRequestModelCopyWithImpl<$Res>
    implements $RegisterRequestModelCopyWith<$Res> {
  _$RegisterRequestModelCopyWithImpl(this._value, this._then);

  final RegisterRequestModel _value;
  // ignore: unused_field
  final $Res Function(RegisterRequestModel) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$RegisterRequestModelCopyWith<$Res>
    implements $RegisterRequestModelCopyWith<$Res> {
  factory _$RegisterRequestModelCopyWith(_RegisterRequestModel value,
          $Res Function(_RegisterRequestModel) then) =
      __$RegisterRequestModelCopyWithImpl<$Res>;
  @override
  $Res call({String name, String email, String password});
}

/// @nodoc
class __$RegisterRequestModelCopyWithImpl<$Res>
    extends _$RegisterRequestModelCopyWithImpl<$Res>
    implements _$RegisterRequestModelCopyWith<$Res> {
  __$RegisterRequestModelCopyWithImpl(
      _RegisterRequestModel _value, $Res Function(_RegisterRequestModel) _then)
      : super(_value, (v) => _then(v as _RegisterRequestModel));

  @override
  _RegisterRequestModel get _value => super._value as _RegisterRequestModel;

  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_RegisterRequestModel(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RegisterRequestModel implements _RegisterRequestModel {
  const _$_RegisterRequestModel(
      {required this.name, required this.email, required this.password});

  factory _$_RegisterRequestModel.fromJson(Map<String, dynamic> json) =>
      _$_$_RegisterRequestModelFromJson(json);

  @override
  final String name;
  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'RegisterRequestModel(name: $name, email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RegisterRequestModel &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password);

  @JsonKey(ignore: true)
  @override
  _$RegisterRequestModelCopyWith<_RegisterRequestModel> get copyWith =>
      __$RegisterRequestModelCopyWithImpl<_RegisterRequestModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RegisterRequestModelToJson(this);
  }
}

abstract class _RegisterRequestModel implements RegisterRequestModel {
  const factory _RegisterRequestModel(
      {required String name,
      required String email,
      required String password}) = _$_RegisterRequestModel;

  factory _RegisterRequestModel.fromJson(Map<String, dynamic> json) =
      _$_RegisterRequestModel.fromJson;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get email => throw _privateConstructorUsedError;
  @override
  String get password => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RegisterRequestModelCopyWith<_RegisterRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}
