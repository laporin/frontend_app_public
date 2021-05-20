import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorageService {
  final storage = new FlutterSecureStorage();

  Future<void> create({required String key, required String value}) async {
    return await storage.write(key: key, value: value);
  }

  Future<String?> read({required String key}) async {
    return await storage.read(key: key);
  }

  Future<void> delete({required String key}) async {
    return await storage.delete(key: key);
  }
}
