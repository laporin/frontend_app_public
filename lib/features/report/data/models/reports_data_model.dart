import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend_app_public/features/report/data/models/report_category_model.dart';
import 'package:frontend_app_public/features/report/data/models/report_image_model.dart';
import 'package:frontend_app_public/features/report/data/models/report_user_model.dart';

part 'reports_data_model.freezed.dart';
part 'reports_data_model.g.dart';

@freezed
class ReportsDataModel with _$ReportsDataModel {
  const factory ReportsDataModel({
    required int id,
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
    required String updatedAt,
  }) = _ReportsDataModel;

  factory ReportsDataModel.fromJson(Map<String, dynamic> json) =>
      _$ReportsDataModelFromJson(json);
}
