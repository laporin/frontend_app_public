// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'create_report_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateReportRequestModel _$CreateReportRequestModelFromJson(
    Map<String, dynamic> json) {
  return _CreateReportRequestModel.fromJson(json);
}

/// @nodoc
class _$CreateReportRequestModelTearOff {
  const _$CreateReportRequestModelTearOff();

  _CreateReportRequestModel call(
      {required int categoryId,
      required String detail,
      required String address,
      required String city,
      required String subdistrict,
      required double latitude,
      required double longitude,
      required bool private}) {
    return _CreateReportRequestModel(
      categoryId: categoryId,
      detail: detail,
      address: address,
      city: city,
      subdistrict: subdistrict,
      latitude: latitude,
      longitude: longitude,
      private: private,
    );
  }

  CreateReportRequestModel fromJson(Map<String, Object> json) {
    return CreateReportRequestModel.fromJson(json);
  }
}

/// @nodoc
const $CreateReportRequestModel = _$CreateReportRequestModelTearOff();

/// @nodoc
mixin _$CreateReportRequestModel {
  int get categoryId => throw _privateConstructorUsedError;
  String get detail => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get subdistrict => throw _privateConstructorUsedError;
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  bool get private => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateReportRequestModelCopyWith<CreateReportRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateReportRequestModelCopyWith<$Res> {
  factory $CreateReportRequestModelCopyWith(CreateReportRequestModel value,
          $Res Function(CreateReportRequestModel) then) =
      _$CreateReportRequestModelCopyWithImpl<$Res>;
  $Res call(
      {int categoryId,
      String detail,
      String address,
      String city,
      String subdistrict,
      double latitude,
      double longitude,
      bool private});
}

/// @nodoc
class _$CreateReportRequestModelCopyWithImpl<$Res>
    implements $CreateReportRequestModelCopyWith<$Res> {
  _$CreateReportRequestModelCopyWithImpl(this._value, this._then);

  final CreateReportRequestModel _value;
  // ignore: unused_field
  final $Res Function(CreateReportRequestModel) _then;

  @override
  $Res call({
    Object? categoryId = freezed,
    Object? detail = freezed,
    Object? address = freezed,
    Object? city = freezed,
    Object? subdistrict = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? private = freezed,
  }) {
    return _then(_value.copyWith(
      categoryId: categoryId == freezed
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
      detail: detail == freezed
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      subdistrict: subdistrict == freezed
          ? _value.subdistrict
          : subdistrict // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      private: private == freezed
          ? _value.private
          : private // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$CreateReportRequestModelCopyWith<$Res>
    implements $CreateReportRequestModelCopyWith<$Res> {
  factory _$CreateReportRequestModelCopyWith(_CreateReportRequestModel value,
          $Res Function(_CreateReportRequestModel) then) =
      __$CreateReportRequestModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int categoryId,
      String detail,
      String address,
      String city,
      String subdistrict,
      double latitude,
      double longitude,
      bool private});
}

/// @nodoc
class __$CreateReportRequestModelCopyWithImpl<$Res>
    extends _$CreateReportRequestModelCopyWithImpl<$Res>
    implements _$CreateReportRequestModelCopyWith<$Res> {
  __$CreateReportRequestModelCopyWithImpl(_CreateReportRequestModel _value,
      $Res Function(_CreateReportRequestModel) _then)
      : super(_value, (v) => _then(v as _CreateReportRequestModel));

  @override
  _CreateReportRequestModel get _value =>
      super._value as _CreateReportRequestModel;

  @override
  $Res call({
    Object? categoryId = freezed,
    Object? detail = freezed,
    Object? address = freezed,
    Object? city = freezed,
    Object? subdistrict = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? private = freezed,
  }) {
    return _then(_CreateReportRequestModel(
      categoryId: categoryId == freezed
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
      detail: detail == freezed
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      subdistrict: subdistrict == freezed
          ? _value.subdistrict
          : subdistrict // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      private: private == freezed
          ? _value.private
          : private // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreateReportRequestModel implements _CreateReportRequestModel {
  const _$_CreateReportRequestModel(
      {required this.categoryId,
      required this.detail,
      required this.address,
      required this.city,
      required this.subdistrict,
      required this.latitude,
      required this.longitude,
      required this.private});

  factory _$_CreateReportRequestModel.fromJson(Map<String, dynamic> json) =>
      _$_$_CreateReportRequestModelFromJson(json);

  @override
  final int categoryId;
  @override
  final String detail;
  @override
  final String address;
  @override
  final String city;
  @override
  final String subdistrict;
  @override
  final double latitude;
  @override
  final double longitude;
  @override
  final bool private;

  @override
  String toString() {
    return 'CreateReportRequestModel(categoryId: $categoryId, detail: $detail, address: $address, city: $city, subdistrict: $subdistrict, latitude: $latitude, longitude: $longitude, private: $private)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CreateReportRequestModel &&
            (identical(other.categoryId, categoryId) ||
                const DeepCollectionEquality()
                    .equals(other.categoryId, categoryId)) &&
            (identical(other.detail, detail) ||
                const DeepCollectionEquality().equals(other.detail, detail)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.subdistrict, subdistrict) ||
                const DeepCollectionEquality()
                    .equals(other.subdistrict, subdistrict)) &&
            (identical(other.latitude, latitude) ||
                const DeepCollectionEquality()
                    .equals(other.latitude, latitude)) &&
            (identical(other.longitude, longitude) ||
                const DeepCollectionEquality()
                    .equals(other.longitude, longitude)) &&
            (identical(other.private, private) ||
                const DeepCollectionEquality().equals(other.private, private)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(categoryId) ^
      const DeepCollectionEquality().hash(detail) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(subdistrict) ^
      const DeepCollectionEquality().hash(latitude) ^
      const DeepCollectionEquality().hash(longitude) ^
      const DeepCollectionEquality().hash(private);

  @JsonKey(ignore: true)
  @override
  _$CreateReportRequestModelCopyWith<_CreateReportRequestModel> get copyWith =>
      __$CreateReportRequestModelCopyWithImpl<_CreateReportRequestModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CreateReportRequestModelToJson(this);
  }
}

abstract class _CreateReportRequestModel implements CreateReportRequestModel {
  const factory _CreateReportRequestModel(
      {required int categoryId,
      required String detail,
      required String address,
      required String city,
      required String subdistrict,
      required double latitude,
      required double longitude,
      required bool private}) = _$_CreateReportRequestModel;

  factory _CreateReportRequestModel.fromJson(Map<String, dynamic> json) =
      _$_CreateReportRequestModel.fromJson;

  @override
  int get categoryId => throw _privateConstructorUsedError;
  @override
  String get detail => throw _privateConstructorUsedError;
  @override
  String get address => throw _privateConstructorUsedError;
  @override
  String get city => throw _privateConstructorUsedError;
  @override
  String get subdistrict => throw _privateConstructorUsedError;
  @override
  double get latitude => throw _privateConstructorUsedError;
  @override
  double get longitude => throw _privateConstructorUsedError;
  @override
  bool get private => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CreateReportRequestModelCopyWith<_CreateReportRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}
