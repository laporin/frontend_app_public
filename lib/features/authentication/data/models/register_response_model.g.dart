// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RegisterResponseModel _$_$_RegisterResponseModelFromJson(
    Map<String, dynamic> json) {
  return _$_RegisterResponseModel(
    accessToken: json['access_token'] as String,
    tokenType: json['token_type'] as String,
    user:
        AuthenticationUserModel.fromJson(json['user'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_RegisterResponseModelToJson(
        _$_RegisterResponseModel instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'token_type': instance.tokenType,
      'user': instance.user,
    };
