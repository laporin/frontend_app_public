import 'package:dartz/dartz.dart';
import 'package:frontend_app_public/core/failure/failure.dart';
import 'package:frontend_app_public/core/usecases/usecase.dart';
import 'package:frontend_app_public/features/report/data/models/delete_report_response_model.dart';
import 'package:frontend_app_public/features/report/domain/repositories/report_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class DeleteReportUsecase implements Usecase<DeleteReportResponseModel, int> {
  final ReportRepository repository;

  DeleteReportUsecase({
    required this.repository,
  });

  @override
  Future<Either<Failure, DeleteReportResponseModel>> call(int id) async {
    return await repository.deleteReport(id);
  }
}
