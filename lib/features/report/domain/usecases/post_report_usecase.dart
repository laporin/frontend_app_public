import 'package:dartz/dartz.dart';
import 'package:frontend_app_public/core/failure/failure.dart';
import 'package:frontend_app_public/core/usecases/usecase.dart';
import 'package:frontend_app_public/features/report/data/models/create_report_request_model.dart';
import 'package:frontend_app_public/features/report/data/models/create_report_response_model.dart';
import 'package:frontend_app_public/features/report/domain/repositories/report_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class CreateReportUsecase
    implements Usecase<CreateReportResponseModel, CreateReportRequestModel> {
  final ReportRepository repository;

  CreateReportUsecase({
    required this.repository,
  });

  @override
  Future<Either<Failure, CreateReportResponseModel>> call(
    CreateReportRequestModel body,
  ) async {
    return await repository.postReport(body);
  }
}
