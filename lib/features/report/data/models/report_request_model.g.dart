// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ReportRequestModel _$_$_ReportRequestModelFromJson(
    Map<String, dynamic> json) {
  return _$_ReportRequestModel(
    categoryId: json['category_id'] as int,
    detail: json['detail'] as String,
    address: json['address'] as String,
    city: json['city'] as String,
    subdistrict: json['subdistrict'] as String,
    latitude: (json['latitude'] as num).toDouble(),
    longitude: (json['longitude'] as num).toDouble(),
    private: json['private'] as bool,
  );
}

Map<String, dynamic> _$_$_ReportRequestModelToJson(
        _$_ReportRequestModel instance) =>
    <String, dynamic>{
      'category_id': instance.categoryId,
      'detail': instance.detail,
      'address': instance.address,
      'city': instance.city,
      'subdistrict': instance.subdistrict,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'private': instance.private,
    };
