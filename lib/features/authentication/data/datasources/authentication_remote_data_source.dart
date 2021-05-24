import 'package:dio/dio.dart';
import 'package:frontend_app_public/config/env/env.dart';
import 'package:frontend_app_public/core/exception/server_exception.dart';
import 'package:frontend_app_public/features/authentication/data/models/login_request_model.dart';
import 'package:frontend_app_public/features/authentication/data/models/login_response_model.dart';
import 'package:frontend_app_public/features/authentication/data/models/logout_response_model.dart';
import 'package:frontend_app_public/features/authentication/data/models/register_request_model.dart';
import 'package:frontend_app_public/features/authentication/data/models/register_response_model.dart';
import 'package:injectable/injectable.dart';

abstract class AuthenticationRemoteDataSource {
  Future<LoginResponseModel> postLogin(LoginRequestModel loginRequestModel);
  Future<RegisterResponseModel> postRegister(
      RegisterRequestModel registerRequestModel);
  Future<LogoutResponseModel> deleteLogout();
}

@Injectable(as: AuthenticationRemoteDataSource)
class AuthenticationRemoteDataSourceImpl
    implements AuthenticationRemoteDataSource {
  final Dio dio;

  AuthenticationRemoteDataSourceImpl({
    required this.dio,
  });

  @override
  Future<RegisterResponseModel> postRegister(
      RegisterRequestModel registerRequestModel) async {
    final response = await dio.post(
      '${Env.backendUrl}/api/register',
      data: registerRequestModel,
    );
    if (response.statusCode == 200) {
      return RegisterResponseModel.fromJson(response.data);
    } else {
      throw ServerException();
    }
  }

  @override
  Future<LoginResponseModel> postLogin(
    LoginRequestModel loginRequestModel,
  ) async {
    final response = await dio.post(
      '${Env.backendUrl}/api/login',
      data: loginRequestModel,
    );
    if (response.statusCode == 200) {
      return LoginResponseModel.fromJson(response.data);
    } else {
      throw ServerException();
    }
  }

  @override
  Future<LogoutResponseModel> deleteLogout() async {
    final response = await dio.delete('${Env.backendUrl}/api/logout');
    if (response.statusCode == 200) {
      return LogoutResponseModel.fromJson(response.data);
    } else {
      throw ServerException();
    }
  }
}
