import 'package:freezed_annotation/freezed_annotation.dart';

part 'authentication_credential_model.freezed.dart';
part 'authentication_credential_model.g.dart';

@freezed
class AuthenticationCredentialModel with _$AuthenticationCredentialModel {
  const factory AuthenticationCredentialModel({
    required String accessToken,
    required String tokenType,
    required int userId,
  }) = _AuthenticationCredentialModel;

  factory AuthenticationCredentialModel.fromJson(Map<String, dynamic> json) =>
      _$AuthenticationCredentialModelFromJson(json);
}
