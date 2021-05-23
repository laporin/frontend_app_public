// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'report_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReportDataModel _$ReportDataModelFromJson(Map<String, dynamic> json) {
  return _ReportDataModel.fromJson(json);
}

/// @nodoc
class _$ReportDataModelTearOff {
  const _$ReportDataModelTearOff();

  _ReportDataModel call(
      {required int id,
      required String serial,
      required ReportUserModel reportUserModel,
      required ReportCategoryModel reportCategoryModel,
      required String detail,
      required String address,
      required String city,
      required String subdistrict,
      required double latitude,
      required double longitude,
      required bool private,
      required List<ReportImageModel> reportImageModels,
      required String createdAt,
      required String updatedAt}) {
    return _ReportDataModel(
      id: id,
      serial: serial,
      reportUserModel: reportUserModel,
      reportCategoryModel: reportCategoryModel,
      detail: detail,
      address: address,
      city: city,
      subdistrict: subdistrict,
      latitude: latitude,
      longitude: longitude,
      private: private,
      reportImageModels: reportImageModels,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  ReportDataModel fromJson(Map<String, Object> json) {
    return ReportDataModel.fromJson(json);
  }
}

/// @nodoc
const $ReportDataModel = _$ReportDataModelTearOff();

/// @nodoc
mixin _$ReportDataModel {
  int get id => throw _privateConstructorUsedError;
  String get serial => throw _privateConstructorUsedError;
  ReportUserModel get reportUserModel => throw _privateConstructorUsedError;
  ReportCategoryModel get reportCategoryModel =>
      throw _privateConstructorUsedError;
  String get detail => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get subdistrict => throw _privateConstructorUsedError;
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  bool get private => throw _privateConstructorUsedError;
  List<ReportImageModel> get reportImageModels =>
      throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReportDataModelCopyWith<ReportDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportDataModelCopyWith<$Res> {
  factory $ReportDataModelCopyWith(
          ReportDataModel value, $Res Function(ReportDataModel) then) =
      _$ReportDataModelCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String serial,
      ReportUserModel reportUserModel,
      ReportCategoryModel reportCategoryModel,
      String detail,
      String address,
      String city,
      String subdistrict,
      double latitude,
      double longitude,
      bool private,
      List<ReportImageModel> reportImageModels,
      String createdAt,
      String updatedAt});

  $ReportUserModelCopyWith<$Res> get reportUserModel;
  $ReportCategoryModelCopyWith<$Res> get reportCategoryModel;
}

/// @nodoc
class _$ReportDataModelCopyWithImpl<$Res>
    implements $ReportDataModelCopyWith<$Res> {
  _$ReportDataModelCopyWithImpl(this._value, this._then);

  final ReportDataModel _value;
  // ignore: unused_field
  final $Res Function(ReportDataModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? serial = freezed,
    Object? reportUserModel = freezed,
    Object? reportCategoryModel = freezed,
    Object? detail = freezed,
    Object? address = freezed,
    Object? city = freezed,
    Object? subdistrict = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? private = freezed,
    Object? reportImageModels = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      serial: serial == freezed
          ? _value.serial
          : serial // ignore: cast_nullable_to_non_nullable
              as String,
      reportUserModel: reportUserModel == freezed
          ? _value.reportUserModel
          : reportUserModel // ignore: cast_nullable_to_non_nullable
              as ReportUserModel,
      reportCategoryModel: reportCategoryModel == freezed
          ? _value.reportCategoryModel
          : reportCategoryModel // ignore: cast_nullable_to_non_nullable
              as ReportCategoryModel,
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
      reportImageModels: reportImageModels == freezed
          ? _value.reportImageModels
          : reportImageModels // ignore: cast_nullable_to_non_nullable
              as List<ReportImageModel>,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $ReportUserModelCopyWith<$Res> get reportUserModel {
    return $ReportUserModelCopyWith<$Res>(_value.reportUserModel, (value) {
      return _then(_value.copyWith(reportUserModel: value));
    });
  }

  @override
  $ReportCategoryModelCopyWith<$Res> get reportCategoryModel {
    return $ReportCategoryModelCopyWith<$Res>(_value.reportCategoryModel,
        (value) {
      return _then(_value.copyWith(reportCategoryModel: value));
    });
  }
}

/// @nodoc
abstract class _$ReportDataModelCopyWith<$Res>
    implements $ReportDataModelCopyWith<$Res> {
  factory _$ReportDataModelCopyWith(
          _ReportDataModel value, $Res Function(_ReportDataModel) then) =
      __$ReportDataModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String serial,
      ReportUserModel reportUserModel,
      ReportCategoryModel reportCategoryModel,
      String detail,
      String address,
      String city,
      String subdistrict,
      double latitude,
      double longitude,
      bool private,
      List<ReportImageModel> reportImageModels,
      String createdAt,
      String updatedAt});

  @override
  $ReportUserModelCopyWith<$Res> get reportUserModel;
  @override
  $ReportCategoryModelCopyWith<$Res> get reportCategoryModel;
}

/// @nodoc
class __$ReportDataModelCopyWithImpl<$Res>
    extends _$ReportDataModelCopyWithImpl<$Res>
    implements _$ReportDataModelCopyWith<$Res> {
  __$ReportDataModelCopyWithImpl(
      _ReportDataModel _value, $Res Function(_ReportDataModel) _then)
      : super(_value, (v) => _then(v as _ReportDataModel));

  @override
  _ReportDataModel get _value => super._value as _ReportDataModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? serial = freezed,
    Object? reportUserModel = freezed,
    Object? reportCategoryModel = freezed,
    Object? detail = freezed,
    Object? address = freezed,
    Object? city = freezed,
    Object? subdistrict = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? private = freezed,
    Object? reportImageModels = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_ReportDataModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      serial: serial == freezed
          ? _value.serial
          : serial // ignore: cast_nullable_to_non_nullable
              as String,
      reportUserModel: reportUserModel == freezed
          ? _value.reportUserModel
          : reportUserModel // ignore: cast_nullable_to_non_nullable
              as ReportUserModel,
      reportCategoryModel: reportCategoryModel == freezed
          ? _value.reportCategoryModel
          : reportCategoryModel // ignore: cast_nullable_to_non_nullable
              as ReportCategoryModel,
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
      reportImageModels: reportImageModels == freezed
          ? _value.reportImageModels
          : reportImageModels // ignore: cast_nullable_to_non_nullable
              as List<ReportImageModel>,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReportDataModel implements _ReportDataModel {
  const _$_ReportDataModel(
      {required this.id,
      required this.serial,
      required this.reportUserModel,
      required this.reportCategoryModel,
      required this.detail,
      required this.address,
      required this.city,
      required this.subdistrict,
      required this.latitude,
      required this.longitude,
      required this.private,
      required this.reportImageModels,
      required this.createdAt,
      required this.updatedAt});

  factory _$_ReportDataModel.fromJson(Map<String, dynamic> json) =>
      _$_$_ReportDataModelFromJson(json);

  @override
  final int id;
  @override
  final String serial;
  @override
  final ReportUserModel reportUserModel;
  @override
  final ReportCategoryModel reportCategoryModel;
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
  final List<ReportImageModel> reportImageModels;
  @override
  final String createdAt;
  @override
  final String updatedAt;

  @override
  String toString() {
    return 'ReportDataModel(id: $id, serial: $serial, reportUserModel: $reportUserModel, reportCategoryModel: $reportCategoryModel, detail: $detail, address: $address, city: $city, subdistrict: $subdistrict, latitude: $latitude, longitude: $longitude, private: $private, reportImageModels: $reportImageModels, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ReportDataModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.serial, serial) ||
                const DeepCollectionEquality().equals(other.serial, serial)) &&
            (identical(other.reportUserModel, reportUserModel) ||
                const DeepCollectionEquality()
                    .equals(other.reportUserModel, reportUserModel)) &&
            (identical(other.reportCategoryModel, reportCategoryModel) ||
                const DeepCollectionEquality()
                    .equals(other.reportCategoryModel, reportCategoryModel)) &&
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
                const DeepCollectionEquality()
                    .equals(other.private, private)) &&
            (identical(other.reportImageModels, reportImageModels) ||
                const DeepCollectionEquality()
                    .equals(other.reportImageModels, reportImageModels)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(serial) ^
      const DeepCollectionEquality().hash(reportUserModel) ^
      const DeepCollectionEquality().hash(reportCategoryModel) ^
      const DeepCollectionEquality().hash(detail) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(subdistrict) ^
      const DeepCollectionEquality().hash(latitude) ^
      const DeepCollectionEquality().hash(longitude) ^
      const DeepCollectionEquality().hash(private) ^
      const DeepCollectionEquality().hash(reportImageModels) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt);

  @JsonKey(ignore: true)
  @override
  _$ReportDataModelCopyWith<_ReportDataModel> get copyWith =>
      __$ReportDataModelCopyWithImpl<_ReportDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ReportDataModelToJson(this);
  }
}

abstract class _ReportDataModel implements ReportDataModel {
  const factory _ReportDataModel(
      {required int id,
      required String serial,
      required ReportUserModel reportUserModel,
      required ReportCategoryModel reportCategoryModel,
      required String detail,
      required String address,
      required String city,
      required String subdistrict,
      required double latitude,
      required double longitude,
      required bool private,
      required List<ReportImageModel> reportImageModels,
      required String createdAt,
      required String updatedAt}) = _$_ReportDataModel;

  factory _ReportDataModel.fromJson(Map<String, dynamic> json) =
      _$_ReportDataModel.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get serial => throw _privateConstructorUsedError;
  @override
  ReportUserModel get reportUserModel => throw _privateConstructorUsedError;
  @override
  ReportCategoryModel get reportCategoryModel =>
      throw _privateConstructorUsedError;
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
  List<ReportImageModel> get reportImageModels =>
      throw _privateConstructorUsedError;
  @override
  String get createdAt => throw _privateConstructorUsedError;
  @override
  String get updatedAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ReportDataModelCopyWith<_ReportDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
