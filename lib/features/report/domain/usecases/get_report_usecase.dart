import 'package:dartz/dartz.dart';
import 'package:frontend_app_public/core/failure/failure.dart';
import 'package:frontend_app_public/core/usecases/usecase.dart';
import 'package:frontend_app_public/features/report/data/models/report_response_model.dart';
import 'package:frontend_app_public/features/report/domain/repositories/report_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetReportUsecase implements Usecase<ReportResponseModel, int> {
  final ReportRepository repository;

  GetReportUsecase({
    required this.repository,
  });

  @override
  Future<Either<Failure, ReportResponseModel>> call(int id) async {
    return await repository.getReport(id);
  }
}
