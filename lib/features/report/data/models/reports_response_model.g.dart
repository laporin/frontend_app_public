// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reports_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ReportsResponseModel _$_$_ReportsResponseModelFromJson(
    Map<String, dynamic> json) {
  return _$_ReportsResponseModel(
    reportDataModels: (json['report_data_models'] as List<dynamic>)
        .map((e) => ReportDataModel.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_ReportsResponseModelToJson(
        _$_ReportsResponseModel instance) =>
    <String, dynamic>{
      'report_data_models': instance.reportDataModels,
    };
