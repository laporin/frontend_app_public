// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'report_similarity_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReportSimilarityRequestModel _$ReportSimilarityRequestModelFromJson(
    Map<String, dynamic> json) {
  return _ReportSimilarityRequestModel.fromJson(json);
}

/// @nodoc
class _$ReportSimilarityRequestModelTearOff {
  const _$ReportSimilarityRequestModelTearOff();

  _ReportSimilarityRequestModel call({required String detail}) {
    return _ReportSimilarityRequestModel(
      detail: detail,
    );
  }

  ReportSimilarityRequestModel fromJson(Map<String, Object> json) {
    return ReportSimilarityRequestModel.fromJson(json);
  }
}

/// @nodoc
const $ReportSimilarityRequestModel = _$ReportSimilarityRequestModelTearOff();

/// @nodoc
mixin _$ReportSimilarityRequestModel {
  String get detail => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReportSimilarityRequestModelCopyWith<ReportSimilarityRequestModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportSimilarityRequestModelCopyWith<$Res> {
  factory $ReportSimilarityRequestModelCopyWith(
          ReportSimilarityRequestModel value,
          $Res Function(ReportSimilarityRequestModel) then) =
      _$ReportSimilarityRequestModelCopyWithImpl<$Res>;
  $Res call({String detail});
}

/// @nodoc
class _$ReportSimilarityRequestModelCopyWithImpl<$Res>
    implements $ReportSimilarityRequestModelCopyWith<$Res> {
  _$ReportSimilarityRequestModelCopyWithImpl(this._value, this._then);

  final ReportSimilarityRequestModel _value;
  // ignore: unused_field
  final $Res Function(ReportSimilarityRequestModel) _then;

  @override
  $Res call({
    Object? detail = freezed,
  }) {
    return _then(_value.copyWith(
      detail: detail == freezed
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ReportSimilarityRequestModelCopyWith<$Res>
    implements $ReportSimilarityRequestModelCopyWith<$Res> {
  factory _$ReportSimilarityRequestModelCopyWith(
          _ReportSimilarityRequestModel value,
          $Res Function(_ReportSimilarityRequestModel) then) =
      __$ReportSimilarityRequestModelCopyWithImpl<$Res>;
  @override
  $Res call({String detail});
}

/// @nodoc
class __$ReportSimilarityRequestModelCopyWithImpl<$Res>
    extends _$ReportSimilarityRequestModelCopyWithImpl<$Res>
    implements _$ReportSimilarityRequestModelCopyWith<$Res> {
  __$ReportSimilarityRequestModelCopyWithImpl(
      _ReportSimilarityRequestModel _value,
      $Res Function(_ReportSimilarityRequestModel) _then)
      : super(_value, (v) => _then(v as _ReportSimilarityRequestModel));

  @override
  _ReportSimilarityRequestModel get _value =>
      super._value as _ReportSimilarityRequestModel;

  @override
  $Res call({
    Object? detail = freezed,
  }) {
    return _then(_ReportSimilarityRequestModel(
      detail: detail == freezed
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReportSimilarityRequestModel implements _ReportSimilarityRequestModel {
  const _$_ReportSimilarityRequestModel({required this.detail});

  factory _$_ReportSimilarityRequestModel.fromJson(Map<String, dynamic> json) =>
      _$_$_ReportSimilarityRequestModelFromJson(json);

  @override
  final String detail;

  @override
  String toString() {
    return 'ReportSimilarityRequestModel(detail: $detail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ReportSimilarityRequestModel &&
            (identical(other.detail, detail) ||
                const DeepCollectionEquality().equals(other.detail, detail)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(detail);

  @JsonKey(ignore: true)
  @override
  _$ReportSimilarityRequestModelCopyWith<_ReportSimilarityRequestModel>
      get copyWith => __$ReportSimilarityRequestModelCopyWithImpl<
          _ReportSimilarityRequestModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ReportSimilarityRequestModelToJson(this);
  }
}

abstract class _ReportSimilarityRequestModel
    implements ReportSimilarityRequestModel {
  const factory _ReportSimilarityRequestModel({required String detail}) =
      _$_ReportSimilarityRequestModel;

  factory _ReportSimilarityRequestModel.fromJson(Map<String, dynamic> json) =
      _$_ReportSimilarityRequestModel.fromJson;

  @override
  String get detail => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ReportSimilarityRequestModelCopyWith<_ReportSimilarityRequestModel>
      get copyWith => throw _privateConstructorUsedError;
}
