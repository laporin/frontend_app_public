import 'package:freezed_annotation/freezed_annotation.dart';

part 'report_request_model.freezed.dart';
part 'report_request_model.g.dart';

@freezed
class ReportRequestModel with _$ReportRequestModel {
  const factory ReportRequestModel({
    required int categoryId,
    required String detail,
    required String address,
    required String city,
    required String subdistrict,
    required double latitude,
    required double longitude,
    required bool private,
    // required List<ReportImageModel> reportImageModels,
  }) = _ReportRequestModel;

  factory ReportRequestModel.fromJson(Map<String, dynamic> json) =>
      _$ReportRequestModelFromJson(json);
}
