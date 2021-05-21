import 'package:frontend_app_public/features/authentication/domain/entities/login_response_entity.dart';

class RegisterResponseModel extends LoginResponseEntity {
  final String accessToken;
  final String tokenType;

  RegisterResponseModel({
    required this.accessToken,
    required this.tokenType,
  }) : super(
          accessToken: accessToken,
          tokenType: tokenType,
        );

  factory RegisterResponseModel.fromJson(Map<String, dynamic> json) {
    return RegisterResponseModel(
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
