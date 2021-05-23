import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend_app_public/features/report/domain/entities/report_image_entity.dart';

part 'report_image_model.freezed.dart';
part 'report_image_model.g.dart';

@freezed
class ReportImageModel extends ReportImageEntity with _$ReportImageModel {
  const factory ReportImageModel({
    required int id,
    required String url,
  }) = _ReportImageModel;

  factory ReportImageModel.fromJson(Map<String, dynamic> json) =>
      _$ReportImageModelFromJson(json);
}
