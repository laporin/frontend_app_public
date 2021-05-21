import 'package:frontend_app_public/features/authentication/domain/entities/authentication_entity.dart';

class AuthenticationModel extends AuthenticationEntity {
  final String accessToken;

  AuthenticationModel({
    required this.accessToken,
  }) : super(accessToken: accessToken);

  factory AuthenticationModel.fromJson(Map<String, dynamic> json) {
    return AuthenticationModel(
      accessToken: json['access_token'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'access_token': accessToken,
    };
  }
}
