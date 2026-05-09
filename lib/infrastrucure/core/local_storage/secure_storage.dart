

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:mutual_fund_app/infrastrucure/core/error/exception.dart';

class SecureStorage {
  final secureStorage = const FlutterSecureStorage();

  Future<String> read({required String key}) async {
    try {
      return await secureStorage.read(key: key) ?? '';
    } catch (e) {
      throw CacheException(message: e.toString());
    }
  }

  Future<void> write({required String key, required String value}) async {
    try {
      await secureStorage.write(key: key, value: value);
    } catch (e) {
      throw CacheException(message: e.toString());
    }
  }

  Future<void> delete({required String key}) async {
    try {
      await secureStorage.delete(key: key);
    } catch (e) {
      throw CacheException(message: e.toString());
    }
  }

  Future<void> clear() async {
    try {
      await secureStorage.deleteAll();
    } catch (e) {
      throw CacheException(message: e.toString());
    }
  }
}
