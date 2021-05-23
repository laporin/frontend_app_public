// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ReportDataModel _$_$_ReportDataModelFromJson(Map<String, dynamic> json) {
  return _$_ReportDataModel(
    id: json['id'] as int,
    serial: json['serial'] as String,
    user: ReportUserModel.fromJson(json['user'] as Map<String, dynamic>),
    category:
        ReportCategoryModel.fromJson(json['category'] as Map<String, dynamic>),
    detail: json['detail'] as String,
    address: json['address'] as String,
    city: json['city'] as String,
    subdistrict: json['subdistrict'] as String,
    latitude: (json['latitude'] as num).toDouble(),
    longitude: (json['longitude'] as num).toDouble(),
    private: json['private'] as bool,
    images: (json['images'] as List<dynamic>)
        .map((e) => ReportImageModel.fromJson(e as Map<String, dynamic>))
        .toList(),
    createdAt: json['created_at'] as String,
    updatedAt: json['updated_at'] as String,
  );
}

Map<String, dynamic> _$_$_ReportDataModelToJson(_$_ReportDataModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'serial': instance.serial,
      'user': instance.user,
      'category': instance.category,
      'detail': instance.detail,
      'address': instance.address,
      'city': instance.city,
      'subdistrict': instance.subdistrict,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'private': instance.private,
      'images': instance.images,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
