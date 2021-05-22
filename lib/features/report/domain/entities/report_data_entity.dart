import 'package:frontend_app_public/features/report/domain/entities/report_image_entity.dart';

class ReportDataEntity {
  final String id;
  final String serial;
  final int userId;
  final int categoryId;
  final String detail;
  final String address;
  final String city;
  final String subdistrict;
  final double latitude;
  final double longitude;
  final int private;
  final List<ReportImageEntity> reportImageEntities;
  final String createdAt;
  final String updatedAt;

  ReportDataEntity(
    this.id,
    this.serial,
    this.userId,
    this.categoryId,
    this.detail,
    this.address,
    this.city,
    this.subdistrict,
    this.latitude,
    this.longitude,
    this.private,
    this.reportImageEntities,
    this.createdAt,
    this.updatedAt,
  );
}
