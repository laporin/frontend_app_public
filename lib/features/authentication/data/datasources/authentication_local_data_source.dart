import 'package:frontend_app_public/features/authentication/data/models/login_response_model.dart';
import 'package:frontend_app_public/features/authentication/data/models/register_response_model.dart';
import 'package:frontend_app_public/services/secure_storage_service.dart';
import 'package:injectable/injectable.dart';

abstract class AuthenticationLocalDataSource {
  Future<bool> isUserLoggedIn();
  Future<void> saveLoginCredentials(LoginResponseModel data);
  Future<void> saveRegisterCredentials(RegisterResponseModel data);
}

const ACCESS_TOKEN_KEY = "ACCESS_TOKEN";
const TOKEN_TYPE_KEY = "TOKEN_TYPE";

@Injectable(as: AuthenticationLocalDataSource)
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

  @override
  Future<void> saveLoginCredentials(LoginResponseModel data) async {
    return Future.value([
      await storageService.create(
          key: ACCESS_TOKEN_KEY, value: data.accessToken),
      await storageService.create(key: TOKEN_TYPE_KEY, value: data.tokenType),
    ]);
  }

  @override
  Future<void> saveRegisterCredentials(RegisterResponseModel data) async {
    return Future.value([
      await storageService.create(
          key: ACCESS_TOKEN_KEY, value: data.accessToken),
      await storageService.create(key: TOKEN_TYPE_KEY, value: data.tokenType),
    ]);
  }
}
