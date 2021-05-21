import 'package:frontend_app_public/features/authentication/domain/entities/logout_response_entity.dart';

class LogoutResponseModel extends LogoutResponseEntity {
  final String message;

  LogoutResponseModel({
    required this.message,
  }) : super(message: message);

  factory LogoutResponseModel.fromJson(Map<String, dynamic> json) {
    return LogoutResponseModel(
      message: json['message'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'message': message,
    };
  }
}
