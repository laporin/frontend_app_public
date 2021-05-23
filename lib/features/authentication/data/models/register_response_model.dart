import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_response_model.freezed.dart';
part 'register_response_model.g.dart';

@freezed
class RegisterResponseModel with _$RegisterResponseModel {
  const factory RegisterResponseModel({
    required String accessToken,
    required String tokenType,
  }) = _RegisterResponseModel;

  factory RegisterResponseModel.fromJson(Map<String, dynamic> json) =>
      _$RegisterResponseModelFromJson(json);
}

// class RegisterResponseModel extends LoginResponseEntity {
//   final String accessToken;
//   final String tokenType;

//   RegisterResponseModel({
//     required this.accessToken,
//     required this.tokenType,
//   }) : super(
//           accessToken: accessToken,
//           tokenType: tokenType,
//         );

//   factory RegisterResponseModel.fromJson(Map<String, dynamic> json) {
//     return RegisterResponseModel(
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
