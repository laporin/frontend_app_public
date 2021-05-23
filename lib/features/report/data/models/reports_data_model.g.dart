// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reports_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ReportsDataModel _$_$_ReportsDataModelFromJson(Map<String, dynamic> json) {
  return _$_ReportsDataModel(
    id: json['id'] as int,
    serial: json['serial'] as String,
    reportUserModel: ReportUserModel.fromJson(
        json['report_user_model'] as Map<String, dynamic>),
    reportCategoryModel: ReportCategoryModel.fromJson(
        json['report_category_model'] as Map<String, dynamic>),
    detail: json['detail'] as String,
    address: json['address'] as String,
    city: json['city'] as String,
    subdistrict: json['subdistrict'] as String,
    latitude: (json['latitude'] as num).toDouble(),
    longitude: (json['longitude'] as num).toDouble(),
    private: json['private'] as bool,
    reportImageModels: (json['report_image_models'] as List<dynamic>)
        .map((e) => ReportImageModel.fromJson(e as Map<String, dynamic>))
        .toList(),
    createdAt: json['created_at'] as String,
    updatedAt: json['updated_at'] as String,
  );
}

Map<String, dynamic> _$_$_ReportsDataModelToJson(
        _$_ReportsDataModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'serial': instance.serial,
      'report_user_model': instance.reportUserModel,
      'report_category_model': instance.reportCategoryModel,
      'detail': instance.detail,
      'address': instance.address,
      'city': instance.city,
      'subdistrict': instance.subdistrict,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'private': instance.private,
      'report_image_models': instance.reportImageModels,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
