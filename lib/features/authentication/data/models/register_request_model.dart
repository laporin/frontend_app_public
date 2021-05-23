import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_request_model.freezed.dart';
part 'register_request_model.g.dart';

@freezed
class RegisterRequestModel with _$RegisterRequestModel {
  const factory RegisterRequestModel({
    required String name,
    required String email,
    required String password,
  }) = _RegisterRequestModel;

  factory RegisterRequestModel.fromJson(Map<String, dynamic> json) =>
      _$RegisterRequestModelFromJson(json);
}

// class RegisterRequestModel extends RegisterRequestEntity {
//   final String name;
//   final String email;
//   final String password;

//   RegisterRequestModel({
//     required this.name,
//     required this.email,
//     required this.password,
//   }) : super(name: name, email: email, password: password);

//   factory RegisterRequestModel.fromJson(Map<String, dynamic> json) {
//     return RegisterRequestModel(
//       name: json['name'],
//       email: json['email'],
//       password: json['password'],
//     );
//   }

//   RegisterRequestEntity toEntity() {
//     return RegisterRequestEntity(
//       name: name,
//       email: email,
//       password: password,
//     );
//   }

//   Map<String, dynamic> toJson() {
//     return {
//       'name': name,
//       'email': email,
//       'password': password,
//     };
//   }
// }
