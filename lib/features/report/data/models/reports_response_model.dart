import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend_app_public/features/report/data/models/report_data_model.dart';

part 'reports_response_model.freezed.dart';
part 'reports_response_model.g.dart';

@freezed
class ReportsResponseModel with _$ReportsResponseModel {
  const factory ReportsResponseModel({
    required List<ReportDataModel> reportDataModels,
  }) = _ReportsResponseModel;

  factory ReportsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ReportsResponseModelFromJson(json);
}

// class ReportsResponseModel extends ReportsResponseEntity {
//   final List<ReportDataModel> reportDataModel;

//   ReportsResponseModel({
//     required this.reportDataModel,
//   }) : super(reportDataEntities: reportDataModel);

//   factory ReportsResponseModel.fromJson(Map<String, dynamic> json) {
//     return ReportsResponseModel(
//       reportDataModel: json['data'] as List<ReportDataModel>,
//     );
//   }

//   Map<String, dynamic> toJson() {
//     return {
//       'data': reportDataModel,
//     };
//   }
// }
