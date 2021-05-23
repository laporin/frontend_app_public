import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend_app_public/features/report/data/models/report_data_model.dart';

part 'report_response_model.freezed.dart';
part 'report_response_model.g.dart';

@freezed
abstract class ReportResponseModel with _$ReportResponseModel{
  const factory ReportResponseModel({
    required ReportDataModel reportDataModel
  }) = _ReportResponseModel;

  factory ReportResponseModel.fromJson(Map<String, dynamic> json) => _$ReportResponseModelFromJson(json);
}

// class ReportResponseModel extends ReportResponseEntity {
//   final ReportDataModel reportDataModel;

//   ReportResponseModel({required this.reportDataModel})
//       : super(reportDataEntity: reportDataModel);

//   factory ReportResponseModel.fromJson(Map<String, dynamic> json) {
//     return ReportResponseModel(
//       reportDataModel: json['data'],
//     );
//   }

//   Map<String, dynamic> toJson() {
//     return {
//       'data': reportDataModel,
//     };
//   }
// }
