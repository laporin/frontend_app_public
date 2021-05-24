import 'package:dio/dio.dart';

final acceptContentInterceptor = InterceptorsWrapper(
  onRequest: (
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    options.headers['Accept'] = 'application/json';
    options.headers["X-Requested-From"] = "android";

    return handler.next(options);
  },
);
