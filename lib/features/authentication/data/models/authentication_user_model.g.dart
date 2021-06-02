// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authentication_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AuthenticationUserModel _$_$_AuthenticationUserModelFromJson(
    Map<String, dynamic> json) {
  return _$_AuthenticationUserModel(
    id: json['id'] as int,
    name: json['name'] as String,
    email: json['email'] as String,
    username: json['username'] as String,
  );
}

Map<String, dynamic> _$_$_AuthenticationUserModelToJson(
        _$_AuthenticationUserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'username': instance.username,
    };
