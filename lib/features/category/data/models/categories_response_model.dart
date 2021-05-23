import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend_app_public/features/category/data/models/category_model.dart';

part 'categories_response_model.freezed.dart';
part 'categories_response_model.g.dart';

@freezed
class CategoriesResponseModel with _$CategoriesResponseModel {
  const factory CategoriesResponseModel({
    required List<CategoryModel> data,
  }) = _CategoriesResponseModel;

  factory CategoriesResponseModel.fromJson(Map<String, dynamic> json) => _$CategoriesResponseModelFromJson(json);
}
