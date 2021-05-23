import 'package:dio/dio.dart';

class LogInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    print('REQUEST[${options.method}] => PATH: ${options.path}');
    // return super.onRequest(options, handler);
    return handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    print('RESPONSE[${response.statusCode}] => PATH: ${response.data}');
    // return super.onResponse(response, handler);
    return handler.next(response);
  }

  // @override
  // Future onError(DioError err, ErrorInterceptorHandler handler) {
  //   print('ERROR[${err.response?.statusCode}] => PATH: ${err.request.path}');
  //   return super.onError(err, handler);
  // }
}
