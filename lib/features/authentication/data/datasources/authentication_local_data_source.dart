import 'package:frontend_app_public/features/authentication/data/models/authentication_credential_model.dart';
import 'package:frontend_app_public/features/authentication/data/models/login_response_model.dart';
import 'package:frontend_app_public/features/authentication/data/models/register_response_model.dart';
import 'package:frontend_app_public/services/secure_storage_service.dart';
import 'package:injectable/injectable.dart';

abstract class AuthenticationLocalDataSource {
  Future<bool> isUserLoggedIn();
  Future<void> saveLoginCredentials(LoginResponseModel data);
  Future<void> saveRegisterCredentials(RegisterResponseModel data);
  Future<void> deleteAuthCredentials();
  Future<AuthenticationCredentialModel> getAuthCredentials();
}

const ACCESS_TOKEN_KEY = "ACCESS_TOKEN";
const TOKEN_TYPE_KEY = "TOKEN_TYPE";
const USER_ID_KEY = "USER_ID";

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
    return Future.value(accessToken != null);
  }

  @override
  Future<void> saveLoginCredentials(LoginResponseModel data) async {
    return Future.value([
      await storageService.create(
        key: ACCESS_TOKEN_KEY,
        value: data.accessToken,
      ),
      await storageService.create(
        key: TOKEN_TYPE_KEY,
        value: data.tokenType,
      ),
      await storageService.create(
        key: USER_ID_KEY,
        value: data.user.id.toString(),
      ),
    ]);
  }

  @override
  Future<void> saveRegisterCredentials(RegisterResponseModel data) async {
    return Future.value([
      await storageService.create(
        key: ACCESS_TOKEN_KEY,
        value: data.accessToken,
      ),
      await storageService.create(
        key: TOKEN_TYPE_KEY,
        value: data.tokenType,
      ),
      await storageService.create(
        key: USER_ID_KEY,
        value: data.user.id.toString(),
      ),
    ]);
  }

  @override
  Future<void> deleteAuthCredentials() async {
    return Future.value([
      await storageService.delete(key: ACCESS_TOKEN_KEY),
      await storageService.delete(key: TOKEN_TYPE_KEY),
      await storageService.delete(key: USER_ID_KEY),
    ]);
  }

  @override
  Future<AuthenticationCredentialModel> getAuthCredentials() async {
    final accessToken = await storageService.read(key: ACCESS_TOKEN_KEY);
    final tokenType = await storageService.read(key: TOKEN_TYPE_KEY);
    var userId = await storageService.read(key: USER_ID_KEY);

    var id = userId ?? '0';
    final intUserId = int.parse(id);
    final credential = AuthenticationCredentialModel(
      accessToken: accessToken ?? '',
      tokenType: tokenType ?? '',
      userId: intUserId,
    );
    return Future.value(credential);
  }
}
