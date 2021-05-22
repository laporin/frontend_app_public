import 'package:frontend_app_public/features/report/domain/entities/report_data_entity.dart';

class ReportResponseEntity {
  final List<ReportDataEntity> reportDataEntities;

  ReportResponseEntity({
    required this.reportDataEntities,
  });
}
