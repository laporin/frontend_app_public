import 'package:frontend_app_public/features/report/data/models/report_data_model.dart';
import 'package:frontend_app_public/features/report/domain/entities/report_response_entity.dart';

class ReportResponseModel extends ReportResponseEntity {
  final ReportDataModel reportDataModel;

  ReportResponseModel({required this.reportDataModel})
      : super(reportDataEntity: reportDataModel);

  factory ReportResponseModel.fromJson(Map<String, dynamic> json) {
    return ReportResponseModel(
      reportDataModel: json['data'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'data': reportDataModel,
    };
  }
}
