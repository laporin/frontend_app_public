import 'package:dio/dio.dart';

final logInterceptor = InterceptorsWrapper(
  onRequest: (
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    print('---------------- Begin Request -------------------\n');
    print('Request[${options.method}] => Path: ${options.path}');
    print('Headers[${options.headers}] => Body: ${options.data}\n');
    print('----------------- End Request --------------------\n');

    return handler.next(options);
  },

  onResponse: (Response response, ResponseInterceptorHandler handler) {
    print('---------------- Begin Response -------------------\n');
    print('Response[${response.statusCode}] => Data: ${response.data}\n');
    print('----------------- End Response --------------------\n');

    return handler.next(response);
  }
);
