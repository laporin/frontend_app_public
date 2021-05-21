import 'package:frontend_app_public/features/authentication/domain/entities/login_request_entity.dart';

class LoginRequestModel extends LoginRequestEntity {
  final String email;
  final String password;

  LoginRequestModel({
    required this.email,
    required this.password,
  }) : super(email: email, password: password);

  factory LoginRequestModel.fromJson(Map<String, dynamic> json) {
    return LoginRequestModel(
      email: json['email'],
      password: json['password'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'email': email,
      'password': password,
    };
  }
}
