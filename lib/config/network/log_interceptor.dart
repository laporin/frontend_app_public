import 'package:dio/dio.dart';

final logInterceptor = InterceptorsWrapper(
  onRequest: (
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    print('Request[${options.method}] => Path: ${options.path}');
    print('Headers[${options.headers}] => Body: ${options.data}');

    return handler.next(options);
  },

  onResponse: (Response response, ResponseInterceptorHandler handler) {
    print('Response[${response.statusCode}] => Data: ${response.data}');
    return handler.next(response);
  }
);
