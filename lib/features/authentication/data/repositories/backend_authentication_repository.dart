import 'package:dartz/dartz.dart';
import 'package:frontend_app_public/core/exception/server_exception.dart';
import 'package:frontend_app_public/core/failure/failure.dart';
import 'package:frontend_app_public/core/failure/server_failure.dart';
import 'package:frontend_app_public/features/authentication/data/datasources/authentication_local_data_source.dart';
import 'package:frontend_app_public/features/authentication/data/datasources/authentication_remote_data_source.dart';
import 'package:frontend_app_public/features/authentication/data/models/authentication_credential_model.dart';
import 'package:frontend_app_public/features/authentication/data/models/login_request_model.dart';
import 'package:frontend_app_public/features/authentication/data/models/login_response_model.dart';
import 'package:frontend_app_public/features/authentication/data/models/logout_response_model.dart';
import 'package:frontend_app_public/features/authentication/data/models/register_response_model.dart';
import 'package:frontend_app_public/features/authentication/data/models/register_request_model.dart';
import 'package:frontend_app_public/features/authentication/domain/repositories/authentication_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AuthenticationRepository)
class BackendAuthenticationRepository implements AuthenticationRepository {
  final AuthenticationLocalDataSource localDataSource;
  final AuthenticationRemoteDataSource remoteDataSource;

  BackendAuthenticationRepository({
    required this.localDataSource,
    required this.remoteDataSource,
  });

  @override
  Future<Either<Failure, RegisterResponseModel>> postRegister(
    RegisterRequestModel registerRequestModel,
  ) async {
    try {
      final data = await remoteDataSource.postRegister(registerRequestModel);
      await localDataSource.saveRegisterCredentials(data);
      return Right(data);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, LoginResponseModel>> postLogin(
    LoginRequestModel loginRequestModel,
  ) async {
    try {
      final data = await remoteDataSource.postLogin(loginRequestModel);
      await localDataSource.saveLoginCredentials(data);
      return Right(data);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, LogoutResponseModel>> deleteLogout() async {
    try {
      final response = await remoteDataSource.deleteLogout();
      await localDataSource.deleteAuthCredentials();
      return Right(response);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, bool>> checkAuthentication() async {
    try {
      final response = await localDataSource.isUserLoggedIn();
      return Right(response);
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}
