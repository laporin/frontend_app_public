// ignore: import_of_legacy_library_into_null_safe
import 'package:dartz/dartz.dart';
import 'package:frontend_app_public/core/failure/failure.dart';
import 'package:frontend_app_public/core/usecases/usecase.dart';
import 'package:frontend_app_public/features/authentication/data/models/register_request_model.dart';
import 'package:frontend_app_public/features/authentication/data/models/register_response_model.dart';
import 'package:frontend_app_public/features/authentication/domain/repositories/authentication_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class RegisterAuthenticationUsecase
    implements Usecase<RegisterResponseModel, RegisterRequestModel> {
  final AuthenticationRepository repository;

  RegisterAuthenticationUsecase({
    required this.repository,
  });

  @override
  Future<Either<Failure, RegisterResponseModel>> call(
      RegisterRequestModel model) async {
    return await repository.postRegister(model);
  }
}
