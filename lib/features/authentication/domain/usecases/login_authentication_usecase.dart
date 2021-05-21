// ignore: import_of_legacy_library_into_null_safe
import 'package:dartz/dartz.dart';
import 'package:frontend_app_public/core/failure/failure.dart';
import 'package:frontend_app_public/core/usecases/usecase.dart';
import 'package:frontend_app_public/features/authentication/data/models/login_request_model.dart';
import 'package:frontend_app_public/features/authentication/data/models/login_response_model.dart';
import 'package:frontend_app_public/features/authentication/domain/repositories/authentication_repository.dart';

class LoginAuthenticationUsecase
    implements Usecase<LoginResponseModel, LoginRequestModel> {
  final AuthenticationRepository repository;

  LoginAuthenticationUsecase({
    required this.repository,
  });

  @override
  Future<Either<Failure, LoginResponseModel>> call(
      LoginRequestModel model) async {
    return await repository.postLogin(model);
  }
}
