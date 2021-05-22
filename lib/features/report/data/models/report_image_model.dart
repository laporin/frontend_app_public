import 'package:frontend_app_public/features/report/domain/entities/report_image_entity.dart';

class ReportImageModel extends ReportImageEntity {
  final int id;
  final String url;

  ReportImageModel({
    required this.id,
    required this.url,
  }) : super(id: id, url: url);

  factory ReportImageModel.fromJson(Map<String, dynamic> json) {
    return ReportImageModel(
      id: json['id'] as int,
      url: json['url'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'url': url,
    };
  }
}
