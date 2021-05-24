// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authentication_credential_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AuthenticationCredentialModel _$_$_AuthenticationCredentialModelFromJson(
    Map<String, dynamic> json) {
  return _$_AuthenticationCredentialModel(
    accessToken: json['access_token'] as String,
    tokenType: json['token_type'] as String,
  );
}

Map<String, dynamic> _$_$_AuthenticationCredentialModelToJson(
        _$_AuthenticationCredentialModel instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'token_type': instance.tokenType,
    };
