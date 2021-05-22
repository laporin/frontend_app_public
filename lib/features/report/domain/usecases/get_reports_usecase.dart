import 'package:dartz/dartz.dart';
import 'package:frontend_app_public/core/failure/failure.dart';
import 'package:frontend_app_public/core/usecases/usecase.dart';
import 'package:frontend_app_public/features/report/data/models/reports_response_model.dart';
import 'package:frontend_app_public/features/report/domain/repositories/report_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetReportsUsecase
    implements Usecase<ReportsResponseModel, NoParams> {
  final ReportRepository repository;

  GetReportsUsecase({
    required this.repository,
  });

  @override
  Future<Either<Failure, ReportsResponseModel>> call(NoParams noParams) async {
    return await repository.getReports();
  }
}
