import 'package:freezed_annotation/freezed_annotation.dart';

part 'report_similarity_request_model.freezed.dart';
part 'report_similarity_request_model.g.dart';

@freezed
class ReportSimilarityRequestModel with _$ReportSimilarityRequestModel {
  const factory ReportSimilarityRequestModel({
    required String detail,
  }) = _ReportSimilarityRequestModel;

  factory ReportSimilarityRequestModel.fromJson(Map<String, dynamic> json) =>
      _$ReportSimilarityRequestModelFromJson(json);
}
