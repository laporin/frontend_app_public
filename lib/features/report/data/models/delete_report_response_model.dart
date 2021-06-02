import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_report_response_model.freezed.dart';
part 'delete_report_response_model.g.dart';

@freezed
class DeleteReportResponseModel with _$DeleteReportResponseModel {
  const factory DeleteReportResponseModel({
    required String message,
  }) = _DeleteReportResponseModel;

  factory DeleteReportResponseModel.fromJson(Map<String, dynamic> json) =>
      _$DeleteReportResponseModelFromJson(json);
}
