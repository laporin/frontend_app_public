import 'package:frontend_app_public/features/report/domain/entities/report_category_entity.dart';

class ReportCategoryModel extends ReportCategoryEntity {
  final int id;
  final String name;

  ReportCategoryModel({
    required this.id,
    required this.name,
  }) : super(id: id, name: name);

  factory ReportCategoryModel.fromJson(Map<String, dynamic> json) {
    return ReportCategoryModel(
      id: json['id'] as int,
      name: json['name'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
    };
  }
}
