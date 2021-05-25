import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_report_request_model.freezed.dart';
part 'create_report_request_model.g.dart';

@freezed
class CreateReportRequestModel with _$CreateReportRequestModel {
  const factory CreateReportRequestModel({
    required int categoryId,
    required String detail,
    required String address,
    required String city,
    required String subdistrict,
    required double latitude,
    required double longitude,
    required bool private,
    // required List<ReportImageModel> reportImageModels,
  }) = _CreateReportRequestModel;

  factory CreateReportRequestModel.fromJson(Map<String, dynamic> json) =>
      _$CreateReportRequestModelFromJson(json);
}
