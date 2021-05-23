// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'logout_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LogoutResponseModel _$LogoutResponseModelFromJson(Map<String, dynamic> json) {
  return _LogoutResponseModel.fromJson(json);
}

/// @nodoc
class _$LogoutResponseModelTearOff {
  const _$LogoutResponseModelTearOff();

  _LogoutResponseModel call({required String message}) {
    return _LogoutResponseModel(
      message: message,
    );
  }

  LogoutResponseModel fromJson(Map<String, Object> json) {
    return LogoutResponseModel.fromJson(json);
  }
}

/// @nodoc
const $LogoutResponseModel = _$LogoutResponseModelTearOff();

/// @nodoc
mixin _$LogoutResponseModel {
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LogoutResponseModelCopyWith<LogoutResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogoutResponseModelCopyWith<$Res> {
  factory $LogoutResponseModelCopyWith(
          LogoutResponseModel value, $Res Function(LogoutResponseModel) then) =
      _$LogoutResponseModelCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$LogoutResponseModelCopyWithImpl<$Res>
    implements $LogoutResponseModelCopyWith<$Res> {
  _$LogoutResponseModelCopyWithImpl(this._value, this._then);

  final LogoutResponseModel _value;
  // ignore: unused_field
  final $Res Function(LogoutResponseModel) _then;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$LogoutResponseModelCopyWith<$Res>
    implements $LogoutResponseModelCopyWith<$Res> {
  factory _$LogoutResponseModelCopyWith(_LogoutResponseModel value,
          $Res Function(_LogoutResponseModel) then) =
      __$LogoutResponseModelCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class __$LogoutResponseModelCopyWithImpl<$Res>
    extends _$LogoutResponseModelCopyWithImpl<$Res>
    implements _$LogoutResponseModelCopyWith<$Res> {
  __$LogoutResponseModelCopyWithImpl(
      _LogoutResponseModel _value, $Res Function(_LogoutResponseModel) _then)
      : super(_value, (v) => _then(v as _LogoutResponseModel));

  @override
  _LogoutResponseModel get _value => super._value as _LogoutResponseModel;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_LogoutResponseModel(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LogoutResponseModel implements _LogoutResponseModel {
  const _$_LogoutResponseModel({required this.message});

  factory _$_LogoutResponseModel.fromJson(Map<String, dynamic> json) =>
      _$_$_LogoutResponseModelFromJson(json);

  @override
  final String message;

  @override
  String toString() {
    return 'LogoutResponseModel(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LogoutResponseModel &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$LogoutResponseModelCopyWith<_LogoutResponseModel> get copyWith =>
      __$LogoutResponseModelCopyWithImpl<_LogoutResponseModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LogoutResponseModelToJson(this);
  }
}

abstract class _LogoutResponseModel implements LogoutResponseModel {
  const factory _LogoutResponseModel({required String message}) =
      _$_LogoutResponseModel;

  factory _LogoutResponseModel.fromJson(Map<String, dynamic> json) =
      _$_LogoutResponseModel.fromJson;

  @override
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LogoutResponseModelCopyWith<_LogoutResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}
