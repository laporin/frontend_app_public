import 'package:frontend_app_public/features/report/domain/entities/report_data_entity.dart';

class ReportsResponseEntity {
  final List<ReportDataEntity> reportDataEntities;

  ReportsResponseEntity({
    required this.reportDataEntities,
  });
}
