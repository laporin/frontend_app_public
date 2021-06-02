// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_authenticated_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserAuthenticatedModel _$_$_UserAuthenticatedModelFromJson(
    Map<String, dynamic> json) {
  return _$_UserAuthenticatedModel(
    id: json['id'] as int,
    name: json['name'] as String,
    email: json['email'] as String,
    username: json['username'] as String,
  );
}

Map<String, dynamic> _$_$_UserAuthenticatedModelToJson(
        _$_UserAuthenticatedModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'username': instance.username,
    };
