import 'package:frontend_app_public/features/authentication/domain/entities/login_response_entity.dart';

class LoginResponseModel extends LoginResponseEntity {
  final String accessToken;
  final String tokenType;

  LoginResponseModel({
    required this.accessToken,
    required this.tokenType,
  }) : super(
          accessToken: accessToken,
          tokenType: tokenType,
        );

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) {
    return LoginResponseModel(
      accessToken: json['access_token'],
      tokenType: json['token_type'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'access_token': accessToken,
      'token_type': tokenType,
    };
  }
}
