import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_request_model.freezed.dart';
part 'login_request_model.g.dart';

@freezed
class LoginRequestModel with _$LoginRequestModel {
  const factory LoginRequestModel({
    required String email,
    required String password,
  }) = _LoginRequestModel;

  factory LoginRequestModel.fromJson(Map<String, dynamic> json) =>
      _$LoginRequestModelFromJson(json);
}

// class LoginRequestModel extends LoginRequestEntity {
//   final String email;
//   final String password;

//   LoginRequestModel({
//     required this.email,
//     required this.password,
//   }) : super(email: email, password: password);

//   factory LoginRequestModel.fromJson(Map<String, dynamic> json) {
//     return LoginRequestModel(
//       email: json['email'],
//       password: json['password'],
//     );
//   }

//   Map<String, dynamic> toJson() {
//     return {
//       'email': email,
//       'password': password,
//     };
//   }
// }
