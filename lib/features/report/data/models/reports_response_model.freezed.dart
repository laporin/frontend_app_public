// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'reports_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReportsResponseModel _$ReportsResponseModelFromJson(Map<String, dynamic> json) {
  return _ReportsResponseModel.fromJson(json);
}

/// @nodoc
class _$ReportsResponseModelTearOff {
  const _$ReportsResponseModelTearOff();

  _ReportsResponseModel call({required List<ReportDataModel> data}) {
    return _ReportsResponseModel(
      data: data,
    );
  }

  ReportsResponseModel fromJson(Map<String, Object> json) {
    return ReportsResponseModel.fromJson(json);
  }
}

/// @nodoc
const $ReportsResponseModel = _$ReportsResponseModelTearOff();

/// @nodoc
mixin _$ReportsResponseModel {
  List<ReportDataModel> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReportsResponseModelCopyWith<ReportsResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportsResponseModelCopyWith<$Res> {
  factory $ReportsResponseModelCopyWith(ReportsResponseModel value,
          $Res Function(ReportsResponseModel) then) =
      _$ReportsResponseModelCopyWithImpl<$Res>;
  $Res call({List<ReportDataModel> data});
}

/// @nodoc
class _$ReportsResponseModelCopyWithImpl<$Res>
    implements $ReportsResponseModelCopyWith<$Res> {
  _$ReportsResponseModelCopyWithImpl(this._value, this._then);

  final ReportsResponseModel _value;
  // ignore: unused_field
  final $Res Function(ReportsResponseModel) _then;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ReportDataModel>,
    ));
  }
}

/// @nodoc
abstract class _$ReportsResponseModelCopyWith<$Res>
    implements $ReportsResponseModelCopyWith<$Res> {
  factory _$ReportsResponseModelCopyWith(_ReportsResponseModel value,
          $Res Function(_ReportsResponseModel) then) =
      __$ReportsResponseModelCopyWithImpl<$Res>;
  @override
  $Res call({List<ReportDataModel> data});
}

/// @nodoc
class __$ReportsResponseModelCopyWithImpl<$Res>
    extends _$ReportsResponseModelCopyWithImpl<$Res>
    implements _$ReportsResponseModelCopyWith<$Res> {
  __$ReportsResponseModelCopyWithImpl(
      _ReportsResponseModel _value, $Res Function(_ReportsResponseModel) _then)
      : super(_value, (v) => _then(v as _ReportsResponseModel));

  @override
  _ReportsResponseModel get _value => super._value as _ReportsResponseModel;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_ReportsResponseModel(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ReportDataModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReportsResponseModel implements _ReportsResponseModel {
  const _$_ReportsResponseModel({required this.data});

  factory _$_ReportsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$_$_ReportsResponseModelFromJson(json);

  @override
  final List<ReportDataModel> data;

  @override
  String toString() {
    return 'ReportsResponseModel(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ReportsResponseModel &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$ReportsResponseModelCopyWith<_ReportsResponseModel> get copyWith =>
      __$ReportsResponseModelCopyWithImpl<_ReportsResponseModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ReportsResponseModelToJson(this);
  }
}

abstract class _ReportsResponseModel implements ReportsResponseModel {
  const factory _ReportsResponseModel({required List<ReportDataModel> data}) =
      _$_ReportsResponseModel;

  factory _ReportsResponseModel.fromJson(Map<String, dynamic> json) =
      _$_ReportsResponseModel.fromJson;

  @override
  List<ReportDataModel> get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ReportsResponseModelCopyWith<_ReportsResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}
