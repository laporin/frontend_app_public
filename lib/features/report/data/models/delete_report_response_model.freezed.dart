// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'delete_report_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DeleteReportResponseModel _$DeleteReportResponseModelFromJson(
    Map<String, dynamic> json) {
  return _DeleteReportResponseModel.fromJson(json);
}

/// @nodoc
class _$DeleteReportResponseModelTearOff {
  const _$DeleteReportResponseModelTearOff();

  _DeleteReportResponseModel call({required String message}) {
    return _DeleteReportResponseModel(
      message: message,
    );
  }

  DeleteReportResponseModel fromJson(Map<String, Object> json) {
    return DeleteReportResponseModel.fromJson(json);
  }
}

/// @nodoc
const $DeleteReportResponseModel = _$DeleteReportResponseModelTearOff();

/// @nodoc
mixin _$DeleteReportResponseModel {
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeleteReportResponseModelCopyWith<DeleteReportResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteReportResponseModelCopyWith<$Res> {
  factory $DeleteReportResponseModelCopyWith(DeleteReportResponseModel value,
          $Res Function(DeleteReportResponseModel) then) =
      _$DeleteReportResponseModelCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$DeleteReportResponseModelCopyWithImpl<$Res>
    implements $DeleteReportResponseModelCopyWith<$Res> {
  _$DeleteReportResponseModelCopyWithImpl(this._value, this._then);

  final DeleteReportResponseModel _value;
  // ignore: unused_field
  final $Res Function(DeleteReportResponseModel) _then;

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
abstract class _$DeleteReportResponseModelCopyWith<$Res>
    implements $DeleteReportResponseModelCopyWith<$Res> {
  factory _$DeleteReportResponseModelCopyWith(_DeleteReportResponseModel value,
          $Res Function(_DeleteReportResponseModel) then) =
      __$DeleteReportResponseModelCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class __$DeleteReportResponseModelCopyWithImpl<$Res>
    extends _$DeleteReportResponseModelCopyWithImpl<$Res>
    implements _$DeleteReportResponseModelCopyWith<$Res> {
  __$DeleteReportResponseModelCopyWithImpl(_DeleteReportResponseModel _value,
      $Res Function(_DeleteReportResponseModel) _then)
      : super(_value, (v) => _then(v as _DeleteReportResponseModel));

  @override
  _DeleteReportResponseModel get _value =>
      super._value as _DeleteReportResponseModel;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_DeleteReportResponseModel(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DeleteReportResponseModel implements _DeleteReportResponseModel {
  const _$_DeleteReportResponseModel({required this.message});

  factory _$_DeleteReportResponseModel.fromJson(Map<String, dynamic> json) =>
      _$_$_DeleteReportResponseModelFromJson(json);

  @override
  final String message;

  @override
  String toString() {
    return 'DeleteReportResponseModel(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeleteReportResponseModel &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$DeleteReportResponseModelCopyWith<_DeleteReportResponseModel>
      get copyWith =>
          __$DeleteReportResponseModelCopyWithImpl<_DeleteReportResponseModel>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DeleteReportResponseModelToJson(this);
  }
}

abstract class _DeleteReportResponseModel implements DeleteReportResponseModel {
  const factory _DeleteReportResponseModel({required String message}) =
      _$_DeleteReportResponseModel;

  factory _DeleteReportResponseModel.fromJson(Map<String, dynamic> json) =
      _$_DeleteReportResponseModel.fromJson;

  @override
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DeleteReportResponseModelCopyWith<_DeleteReportResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}
