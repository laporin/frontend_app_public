import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend_app_public/features/report/domain/entities/report_user_entity.dart';

part 'report_user_model.freezed.dart';
part 'report_user_model.g.dart';

@freezed
class ReportUserModel extends ReportUserEntity with _$ReportUserModel {
  const factory ReportUserModel({
    required int id,
    required String username,
  }) = _ReportUserModel;

  factory ReportUserModel.fromJson(Map<String, dynamic> json) =>
      _$ReportUserModelFromJson(json);
}
