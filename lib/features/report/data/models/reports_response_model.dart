import 'package:frontend_app_public/features/report/data/models/reports_data_model.dart';
import 'package:frontend_app_public/features/report/domain/entities/reports_response_entity.dart';

class ReportsResponseModel extends ReportsResponseEntity {
  final List<ReportDataModel> reportDataModel;

  ReportsResponseModel({
    required this.reportDataModel,
  }) : super(reportDataEntities: reportDataModel);

  factory ReportsResponseModel.fromJson(Map<String, dynamic> json) {
    return ReportsResponseModel(
      reportDataModel: json['data'] as List<ReportDataModel>,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'data': reportDataModel,
    };
  }
}
