import 'package:frontend_app_public/services/secure_storage_service.dart';

abstract class AuthenticationLocalDataSource {
  Future<bool> isUserLoggedIn();
}

const ACCESS_TOKEN_KEY = "ACCESS_TOKEN";

class AuthenticationLocalDataSourceImpl
    implements AuthenticationLocalDataSource {
  final SecureStorageService storageService;

  AuthenticationLocalDataSourceImpl({
    required this.storageService,
  });

  @override
  Future<bool> isUserLoggedIn() async {
    final accessToken = await storageService.read(key: ACCESS_TOKEN_KEY);
    print("The access token is: $accessToken");
    return Future.value(accessToken != null);
  }
}
