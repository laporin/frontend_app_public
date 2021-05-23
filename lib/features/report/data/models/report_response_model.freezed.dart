// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'report_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReportResponseModel _$ReportResponseModelFromJson(Map<String, dynamic> json) {
  return _ReportResponseModel.fromJson(json);
}

/// @nodoc
class _$ReportResponseModelTearOff {
  const _$ReportResponseModelTearOff();

  _ReportResponseModel call({required ReportDataModel data}) {
    return _ReportResponseModel(
      data: data,
    );
  }

  ReportResponseModel fromJson(Map<String, Object> json) {
    return ReportResponseModel.fromJson(json);
  }
}

/// @nodoc
const $ReportResponseModel = _$ReportResponseModelTearOff();

/// @nodoc
mixin _$ReportResponseModel {
  ReportDataModel get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReportResponseModelCopyWith<ReportResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportResponseModelCopyWith<$Res> {
  factory $ReportResponseModelCopyWith(
          ReportResponseModel value, $Res Function(ReportResponseModel) then) =
      _$ReportResponseModelCopyWithImpl<$Res>;
  $Res call({ReportDataModel data});

  $ReportDataModelCopyWith<$Res> get data;
}

/// @nodoc
class _$ReportResponseModelCopyWithImpl<$Res>
    implements $ReportResponseModelCopyWith<$Res> {
  _$ReportResponseModelCopyWithImpl(this._value, this._then);

  final ReportResponseModel _value;
  // ignore: unused_field
  final $Res Function(ReportResponseModel) _then;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ReportDataModel,
    ));
  }

  @override
  $ReportDataModelCopyWith<$Res> get data {
    return $ReportDataModelCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$ReportResponseModelCopyWith<$Res>
    implements $ReportResponseModelCopyWith<$Res> {
  factory _$ReportResponseModelCopyWith(_ReportResponseModel value,
          $Res Function(_ReportResponseModel) then) =
      __$ReportResponseModelCopyWithImpl<$Res>;
  @override
  $Res call({ReportDataModel data});

  @override
  $ReportDataModelCopyWith<$Res> get data;
}

/// @nodoc
class __$ReportResponseModelCopyWithImpl<$Res>
    extends _$ReportResponseModelCopyWithImpl<$Res>
    implements _$ReportResponseModelCopyWith<$Res> {
  __$ReportResponseModelCopyWithImpl(
      _ReportResponseModel _value, $Res Function(_ReportResponseModel) _then)
      : super(_value, (v) => _then(v as _ReportResponseModel));

  @override
  _ReportResponseModel get _value => super._value as _ReportResponseModel;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_ReportResponseModel(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ReportDataModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReportResponseModel implements _ReportResponseModel {
  const _$_ReportResponseModel({required this.data});

  factory _$_ReportResponseModel.fromJson(Map<String, dynamic> json) =>
      _$_$_ReportResponseModelFromJson(json);

  @override
  final ReportDataModel data;

  @override
  String toString() {
    return 'ReportResponseModel(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ReportResponseModel &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$ReportResponseModelCopyWith<_ReportResponseModel> get copyWith =>
      __$ReportResponseModelCopyWithImpl<_ReportResponseModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ReportResponseModelToJson(this);
  }
}

abstract class _ReportResponseModel implements ReportResponseModel {
  const factory _ReportResponseModel({required ReportDataModel data}) =
      _$_ReportResponseModel;

  factory _ReportResponseModel.fromJson(Map<String, dynamic> json) =
      _$_ReportResponseModel.fromJson;

  @override
  ReportDataModel get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ReportResponseModelCopyWith<_ReportResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}
