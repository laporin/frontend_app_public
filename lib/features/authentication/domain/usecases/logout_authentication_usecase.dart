// ignore: import_of_legacy_library_into_null_safe
import 'package:dartz/dartz.dart';
import 'package:frontend_app_public/core/failure/failure.dart';
import 'package:frontend_app_public/core/usecases/usecase.dart';
import 'package:frontend_app_public/features/authentication/data/models/logout_response_model.dart';
import 'package:frontend_app_public/features/authentication/domain/repositories/authentication_repository.dart';

class LogoutAuthenticationUsecase
    implements Usecase<LogoutResponseModel, NoParams> {
  final AuthenticationRepository repository;

  LogoutAuthenticationUsecase({
    required this.repository,
  });

  @override
  Future<Either<Failure, LogoutResponseModel>> call(NoParams noParams) async {
    return await repository.deleteLogout();
  }
}
