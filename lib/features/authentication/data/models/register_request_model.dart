import 'package:frontend_app_public/features/authentication/domain/entities/register_request_entity.dart';

class RegisterRequestModel extends RegisterRequestEntity {
  final String name;
  final String email;
  final String password;

  RegisterRequestModel({
    required this.name,
    required this.email,
    required this.password,
  }) : super(name: name, email: email, password: password);

  factory RegisterRequestModel.fromJson(Map<String, dynamic> json) {
    return RegisterRequestModel(
      name: json['name'],
      email: json['email'],
      password: json['password'],
    );
  }

  RegisterRequestEntity toEntity() {
    return RegisterRequestEntity(
      name: name,
      email: email,
      password: password,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'email': email,
      'password': password,
    };
  }
}
