// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categories_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CategoriesResponseModel _$_$_CategoriesResponseModelFromJson(
    Map<String, dynamic> json) {
  return _$_CategoriesResponseModel(
    data: (json['data'] as List<dynamic>)
        .map((e) => CategoryModel.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_CategoriesResponseModelToJson(
        _$_CategoriesResponseModel instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
