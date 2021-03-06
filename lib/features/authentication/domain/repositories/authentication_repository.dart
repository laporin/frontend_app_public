import 'package:dartz/dartz.dart';
import 'package:frontend_app_public/core/failure/failure.dart';
import 'package:frontend_app_public/features/authentication/data/models/login_request_model.dart';
import 'package:frontend_app_public/features/authentication/data/models/login_response_model.dart';
import 'package:frontend_app_public/features/authentication/data/models/logout_response_model.dart';
import 'package:frontend_app_public/features/authentication/data/models/register_request_model.dart';
import 'package:frontend_app_public/features/authentication/data/models/register_response_model.dart';

abstract class AuthenticationRepository {
  Future<Either<Failure, LoginResponseModel>> postLogin(
      LoginRequestModel loginRequestModel);
  Future<Either<Failure, RegisterResponseModel>> postRegister(
      RegisterRequestModel registerRequestModel);
  Future<Either<Failure, LogoutResponseModel>> deleteLogout();
  Future<Either<Failure, bool>> checkAuthentication();
}
