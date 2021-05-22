import 'package:frontend_app_public/features/report/domain/entities/report_category_entity.dart';
import 'package:frontend_app_public/features/report/domain/entities/report_image_entity.dart';
import 'package:frontend_app_public/features/report/domain/entities/report_user_entity.dart';

class ReportDataEntity {
  final int id;
  final String serial;
  final ReportUserEntity reportUserEntity;
  final ReportCategoryEntity reportCategoryEntity;
  final String detail;
  final String address;
  final String city;
  final String subdistrict;
  final double latitude;
  final double longitude;
  final bool private;
  final List<ReportImageEntity> reportImageEntities;
  final String createdAt;
  final String updatedAt;

  ReportDataEntity({
    required this.id,
    required this.serial,
    required this.reportUserEntity,
    required this.reportCategoryEntity,
    required this.detail,
    required this.address,
    required this.city,
    required this.subdistrict,
    required this.latitude,
    required this.longitude,
    required this.private,
    required this.reportImageEntities,
    required this.createdAt,
    required this.updatedAt,
  });
}
