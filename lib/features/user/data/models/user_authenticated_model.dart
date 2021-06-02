import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_authenticated_model.freezed.dart';
part 'user_authenticated_model.g.dart';

@freezed
class UserAuthenticatedModel with _$UserAuthenticatedModel {
  const factory UserAuthenticatedModel({
    required int id,
    required String name,
    required String email,
    required String username,
  }) = _UserAuthenticatedModel;

  factory UserAuthenticatedModel.fromJson(Map<String, dynamic> json) =>
      _$UserAuthenticatedModelFromJson(json);
}
