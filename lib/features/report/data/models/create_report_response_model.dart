import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend_app_public/features/report/data/models/report_data_model.dart';

part 'create_report_response_model.freezed.dart';
part 'create_report_response_model.g.dart';

@freezed
class CreateReportResponseModel with _$CreateReportResponseModel {
  const factory CreateReportResponseModel({
    required ReportDataModel data,
  }) = _CreateReportResponseModel;

  factory CreateReportResponseModel.fromJson(Map<String, dynamic> json) =>
      _$CreateReportResponseModelFromJson(json);
}
