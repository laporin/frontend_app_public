import 'package:freezed_annotation/freezed_annotation.dart';

part 'authentication_user_model.freezed.dart';
part 'authentication_user_model.g.dart';

@freezed
class AuthenticationUserModel with _$AuthenticationUserModel {
  const factory AuthenticationUserModel({
    required int id,
    required String name,
    required String email,
    required String username,
  }) = _AuthenticationUserModel;

  factory AuthenticationUserModel.fromJson(Map<String, dynamic> json) => _$AuthenticationUserModelFromJson(json);
}
