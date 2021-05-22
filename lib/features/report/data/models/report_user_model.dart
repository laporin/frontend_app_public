import 'package:frontend_app_public/features/report/domain/entities/report_user_entity.dart';

class ReportUserModel extends ReportUserEntity {
  final int id;
  final String username;

  ReportUserModel({
    required this.id,
    required this.username,
  }) : super(id: id, username: username);

  factory ReportUserModel.fromJson(Map<String, dynamic> json) {
    return ReportUserModel(
      id: json['id'] as int,
      username: json['username'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'username': username,
    };
  }
}
