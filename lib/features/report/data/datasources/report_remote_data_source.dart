import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:frontend_app_public/core/exception/server_exception.dart';
import 'package:frontend_app_public/features/report/data/models/report_response_model.dart';
import 'package:frontend_app_public/features/report/data/models/reports_response_model.dart';

abstract class ReportRemoteDataSource {
  Future<ReportsResponseModel> getReports();
  Future<ReportResponseModel> getReport(int id);
}

class ReportRemoteDataSourceImpl extends ReportRemoteDataSource {
  final Dio dio;

  ReportRemoteDataSourceImpl({required this.dio});

  @override
  Future<ReportsResponseModel> getReports() async {
    final response = await dio.get("localhost:8000/api/reports");
    if (response.statusCode == 200) {
      return ReportsResponseModel.fromJson(json.decode(response.data));
    } else {
      throw ServerException();
    }
  }

  @override
  Future<ReportResponseModel> getReport(int id) async {
    final response = await dio.get("localhost:8000/api/reports/$id");
    if (response.statusCode == 200) {
      return ReportResponseModel.fromJson(json.decode(response.data));
    } else {
      throw ServerException();
    }
  }
}
