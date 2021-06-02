import 'package:dartz/dartz.dart';
import 'package:frontend_app_public/core/failure/failure.dart';
import 'package:frontend_app_public/features/report/data/models/create_report_request_model.dart';
import 'package:frontend_app_public/features/report/data/models/create_report_response_model.dart';
import 'package:frontend_app_public/features/report/data/models/delete_report_response_model.dart';
import 'package:frontend_app_public/features/report/data/models/report_response_model.dart';
import 'package:frontend_app_public/features/report/data/models/report_similarity_request_model.dart';
import 'package:frontend_app_public/features/report/data/models/reports_response_model.dart';

abstract class ReportRepository {
  Future<Either<Failure, ReportsResponseModel>> getReports();
  Future<Either<Failure, ReportResponseModel>> getReport(int id);
  Future<Either<Failure, CreateReportResponseModel>> postReport(
    CreateReportRequestModel body,
  );
  Future<Either<Failure, ReportsResponseModel>> postReportSimilarity(
    ReportSimilarityRequestModel body,
  );
  Future<Either<Failure, DeleteReportResponseModel>> deleteReport(int id);
}
