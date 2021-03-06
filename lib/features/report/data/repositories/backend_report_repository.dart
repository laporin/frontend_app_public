import 'package:dartz/dartz.dart';

import 'package:frontend_app_public/core/exception/server_exception.dart';
import 'package:frontend_app_public/core/failure/server_failure.dart';
import 'package:frontend_app_public/features/report/data/datasources/report_remote_data_source.dart';
import 'package:frontend_app_public/features/report/data/models/create_report_response_model.dart';
import 'package:frontend_app_public/features/report/data/models/create_report_request_model.dart';
import 'package:frontend_app_public/features/report/data/models/delete_report_response_model.dart';
import 'package:frontend_app_public/features/report/data/models/report_similarity_request_model.dart';
import 'package:frontend_app_public/features/report/data/models/reports_response_model.dart';
import 'package:frontend_app_public/features/report/data/models/report_response_model.dart';
import 'package:frontend_app_public/core/failure/failure.dart';
import 'package:frontend_app_public/features/report/domain/repositories/report_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ReportRepository)
class BackendReportRepository implements ReportRepository {
  final ReportRemoteDataSource remoteDataSource;

  BackendReportRepository({required this.remoteDataSource});

  @override
  Future<Either<Failure, ReportsResponseModel>> getReports() async {
    try {
      final response = await remoteDataSource.getReports();
      return Right(response);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, ReportResponseModel>> getReport(int id) async {
    try {
      final response = await remoteDataSource.getReport(id);
      return Right(response);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, CreateReportResponseModel>> postReport(
    CreateReportRequestModel body,
  ) async {
    try {
      final response = await remoteDataSource.postReport(body);
      return Right(response);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, ReportsResponseModel>> postReportSimilarity(
    ReportSimilarityRequestModel body,
  ) async {
    try {
      final response = await remoteDataSource.postReportSimilarity(body);
      return Right(response);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, DeleteReportResponseModel>> deleteReport(int id) async {
    try {
      final response = await remoteDataSource.deleteReport(id);
      return Right(response);
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}
