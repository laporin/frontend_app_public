import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend_app_public/features/authentication/data/models/authentication_user_model.dart';

part 'login_response_model.freezed.dart';
part 'login_response_model.g.dart';

@freezed
class LoginResponseModel with _$LoginResponseModel {
  const factory LoginResponseModel({
    required String accessToken,
    required String tokenType,
    required AuthenticationUserModel user,
  }) = _LoginResponseModel;

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseModelFromJson(json);
}

// class LoginResponseModel extends LoginResponseEntity {
//   final String accessToken;
//   final String tokenType;

//   LoginResponseModel({
//     required this.accessToken,
//     required this.tokenType,
//   }) : super(
//           accessToken: accessToken,
//           tokenType: tokenType,
//         );

//   factory LoginResponseModel.fromJson(Map<String, dynamic> json) {
//     return LoginResponseModel(
//       accessToken: json['access_token'],
//       tokenType: json['token_type'],
//     );
//   }

//   Map<String, dynamic> toJson() {
//     return {
//       'access_token': accessToken,
//       'token_type': tokenType,
//     };
//   }
// }
