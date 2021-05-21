// ignore: import_of_legacy_library_into_null_safe
import 'package:dartz/dartz.dart';
import 'package:frontend_app_public/core/failure/failure.dart';
import 'package:frontend_app_public/features/authentication/data/models/authentication_model.dart';

abstract class AuthenticationRepository {
  Future<Either<Failure, AuthenticationModel>> postLogin(int number);
  Future<Either<Failure, AuthenticationModel>> postRegister();
  Future<Either<Failure, void>> deleteLogout();
}
