import 'package:dio/dio.dart';
import 'package:frontend_app_public/core/exception/server_exception.dart';
import 'package:frontend_app_public/config/env/env.dart';
import 'package:frontend_app_public/features/report/data/models/create_report_request_model.dart';
import 'package:frontend_app_public/features/report/data/models/create_report_response_model.dart';
import 'package:frontend_app_public/features/report/data/models/report_response_model.dart';
import 'package:frontend_app_public/features/report/data/models/report_similarity_request_model.dart';
import 'package:frontend_app_public/features/report/data/models/reports_response_model.dart';
import 'package:injectable/injectable.dart';

abstract class ReportRemoteDataSource {
  Future<ReportsResponseModel> getReports();
  Future<ReportResponseModel> getReport(int id);
  Future<CreateReportResponseModel> postReport(CreateReportRequestModel body);
  Future<ReportsResponseModel> postReportSimilarity(
      ReportSimilarityRequestModel body);
}

@Injectable(as: ReportRemoteDataSource)
class ReportRemoteDataSourceImpl implements ReportRemoteDataSource {
  final Dio dio;

  ReportRemoteDataSourceImpl({required this.dio});

  @override
  Future<ReportsResponseModel> getReports() async {
    final response = await dio.get("${Env.backendUrl}/api/reports");
    if (response.statusCode == 200) {
      return ReportsResponseModel.fromJson(response.data);
    } else {
      throw ServerException();
    }
  }

  @override
  Future<ReportResponseModel> getReport(int id) async {
    final response = await dio.get("${Env.backendUrl}/api/reports/$id");
    if (response.statusCode == 200) {
      return ReportResponseModel.fromJson(response.data);
    } else {
      throw ServerException();
    }
  }

  @override
  Future<CreateReportResponseModel> postReport(
    CreateReportRequestModel body,
  ) async {
    var reportData = FormData.fromMap({
      'detail': body.detail,
      'address': body.address,
      'category_id': body.categoryId,
      'city': body.city,
      'subdistrict': body.subdistrict,
      'latitude': 10.10,
      'longitude': 10.10,
      'private': body.private,
    });

    if (body.images.length > 0) {
      final images = [];
      body.images.forEach((element) {
        images.add(MultipartFile.fromFileSync(element));
      });
    }

    final response = await dio.post(
      "${Env.backendUrl}/api/reports",
      data: reportData,
    );
    if (response.statusCode == 201) {
      return CreateReportResponseModel.fromJson(response.data);
    } else {
      throw ServerException();
    }
  }

  @override
  Future<ReportsResponseModel> postReportSimilarity(
    ReportSimilarityRequestModel body,
  ) async {
    final response = await dio.post("${Env.backendAiUrl}/api/text-similarity", data: body);
    if (response.statusCode == 200) {
      return ReportsResponseModel.fromJson(response.data);
    } else {
      throw ServerException();
    }
  }
}
