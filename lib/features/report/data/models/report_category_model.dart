import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend_app_public/features/report/domain/entities/report_category_entity.dart';

part 'report_category_model.freezed.dart';
part 'report_category_model.g.dart';

@freezed
class ReportCategoryModel extends ReportCategoryEntity
    with _$ReportCategoryModel {
  const factory ReportCategoryModel({
    required int id,
    required String name,
  }) = _ReportCategoryModel;

  factory ReportCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$ReportCategoryModelFromJson(json);
}
