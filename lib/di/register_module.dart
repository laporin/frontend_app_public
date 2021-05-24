import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:frontend_app_public/config/network/fetcher.dart';
import 'package:injectable/injectable.dart';

@module
abstract class RegisterModule {
  // @preResolve
  // Future<SharedPreferences> get prefs => SharedPreferences.getInstance();

  @lazySingleton
  Dio get dio => getDio();

  FlutterSecureStorage get flutterSecureStorage => FlutterSecureStorage();
}
