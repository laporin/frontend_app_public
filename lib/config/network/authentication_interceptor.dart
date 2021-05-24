import 'package:dio/dio.dart';
import 'package:frontend_app_public/config/di/injection.dart';
import 'package:frontend_app_public/features/authentication/data/datasources/authentication_local_data_source.dart';

final local = getIt<AuthenticationLocalDataSource>();
final authenticationInterceptor = InterceptorsWrapper(onRequest: (
  RequestOptions options,
  RequestInterceptorHandler handler,
) async {
  final isLoggedIn = await local.isUserLoggedIn();
  if (isLoggedIn) {
    final credential = await local.getAuthCredentials();
    final authorization = "${credential.tokenType} ${credential.accessToken}";
    options.headers["Authorization"] = authorization;
  }
  return handler.next(options);
});
