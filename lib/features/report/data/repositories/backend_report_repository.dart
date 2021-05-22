import 'package:dartz/dartz.dart';

import 'package:frontend_app_public/core/exception/server_exception.dart';
import 'package:frontend_app_public/core/failure/server_failure.dart';
import 'package:frontend_app_public/features/report/data/datasources/report_remote_data_source.dart';
import 'package:frontend_app_public/features/report/data/models/reports_response_model.dart';
import 'package:frontend_app_public/features/report/data/models/report_response_model.dart';
import 'package:frontend_app_public/core/failure/failure.dart';
import 'package:frontend_app_public/features/report/domain/repositories/report_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ReportRepository)
class BackendReportRepository extends ReportRepository {
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
}
