import 'package:frontend_app_public/core/constants.dart';
import 'package:frontend_app_public/features/user/data/models/user_authenticated_model.dart';
import 'package:frontend_app_public/services/secure_storage_service.dart';
import 'package:injectable/injectable.dart';

abstract class UserLocalDataSource {
  Future<UserAuthenticatedModel> getAuthenticatedUser();
}

@Injectable(as: UserLocalDataSource)
class UserLocalDataSourceImpl implements UserLocalDataSource {
  final SecureStorageService storageService;

  UserLocalDataSourceImpl({
    required this.storageService,
  });

  @override
  Future<UserAuthenticatedModel> getAuthenticatedUser() async {
    var userId = await storageService.read(key: USER_ID_KEY);
    var id = userId ?? '0';
    final intUserId = int.parse(id);
    final user = UserAuthenticatedModel(
      id: intUserId,
      name: 'stub',
      email: 'stub',
      username: 'stub',
    );
    return Future.value(user);
  }
}
