// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'create_report_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateReportResponseModel _$CreateReportResponseModelFromJson(
    Map<String, dynamic> json) {
  return _CreateReportResponseModel.fromJson(json);
}

/// @nodoc
class _$CreateReportResponseModelTearOff {
  const _$CreateReportResponseModelTearOff();

  _CreateReportResponseModel call({required ReportDataModel data}) {
    return _CreateReportResponseModel(
      data: data,
    );
  }

  CreateReportResponseModel fromJson(Map<String, Object> json) {
    return CreateReportResponseModel.fromJson(json);
  }
}

/// @nodoc
const $CreateReportResponseModel = _$CreateReportResponseModelTearOff();

/// @nodoc
mixin _$CreateReportResponseModel {
  ReportDataModel get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateReportResponseModelCopyWith<CreateReportResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateReportResponseModelCopyWith<$Res> {
  factory $CreateReportResponseModelCopyWith(CreateReportResponseModel value,
          $Res Function(CreateReportResponseModel) then) =
      _$CreateReportResponseModelCopyWithImpl<$Res>;
  $Res call({ReportDataModel data});

  $ReportDataModelCopyWith<$Res> get data;
}

/// @nodoc
class _$CreateReportResponseModelCopyWithImpl<$Res>
    implements $CreateReportResponseModelCopyWith<$Res> {
  _$CreateReportResponseModelCopyWithImpl(this._value, this._then);

  final CreateReportResponseModel _value;
  // ignore: unused_field
  final $Res Function(CreateReportResponseModel) _then;

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
abstract class _$CreateReportResponseModelCopyWith<$Res>
    implements $CreateReportResponseModelCopyWith<$Res> {
  factory _$CreateReportResponseModelCopyWith(_CreateReportResponseModel value,
          $Res Function(_CreateReportResponseModel) then) =
      __$CreateReportResponseModelCopyWithImpl<$Res>;
  @override
  $Res call({ReportDataModel data});

  @override
  $ReportDataModelCopyWith<$Res> get data;
}

/// @nodoc
class __$CreateReportResponseModelCopyWithImpl<$Res>
    extends _$CreateReportResponseModelCopyWithImpl<$Res>
    implements _$CreateReportResponseModelCopyWith<$Res> {
  __$CreateReportResponseModelCopyWithImpl(_CreateReportResponseModel _value,
      $Res Function(_CreateReportResponseModel) _then)
      : super(_value, (v) => _then(v as _CreateReportResponseModel));

  @override
  _CreateReportResponseModel get _value =>
      super._value as _CreateReportResponseModel;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_CreateReportResponseModel(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ReportDataModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreateReportResponseModel implements _CreateReportResponseModel {
  const _$_CreateReportResponseModel({required this.data});

  factory _$_CreateReportResponseModel.fromJson(Map<String, dynamic> json) =>
      _$_$_CreateReportResponseModelFromJson(json);

  @override
  final ReportDataModel data;

  @override
  String toString() {
    return 'CreateReportResponseModel(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CreateReportResponseModel &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$CreateReportResponseModelCopyWith<_CreateReportResponseModel>
      get copyWith =>
          __$CreateReportResponseModelCopyWithImpl<_CreateReportResponseModel>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CreateReportResponseModelToJson(this);
  }
}

abstract class _CreateReportResponseModel implements CreateReportResponseModel {
  const factory _CreateReportResponseModel({required ReportDataModel data}) =
      _$_CreateReportResponseModel;

  factory _CreateReportResponseModel.fromJson(Map<String, dynamic> json) =
      _$_CreateReportResponseModel.fromJson;

  @override
  ReportDataModel get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CreateReportResponseModelCopyWith<_CreateReportResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}
