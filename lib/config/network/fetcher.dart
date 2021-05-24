import 'package:dio/dio.dart';
import 'package:frontend_app_public/config/network/accept_content_interceptor.dart';
import 'package:frontend_app_public/config/network/authentication_interceptor.dart';
import 'package:frontend_app_public/config/network/log_interceptor.dart';

Dio getDio() {
  Dio dio = Dio();
  dio.interceptors.addAll([
    acceptContentInterceptor,
    authenticationInterceptor,
    logInterceptor,
  ]);

  return dio;
}
