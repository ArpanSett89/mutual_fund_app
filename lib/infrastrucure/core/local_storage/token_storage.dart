import 'package:mutual_fund_app/domain/core/value/value_objects.dart';
import 'package:mutual_fund_app/infrastrucure/core/error/exception.dart';
import 'package:mutual_fund_app/infrastrucure/core/local_storage/secure_storage.dart';

class TokenUserIdStorage {
  static const String accessTokenKey = 'access_token';
  SecureStorage secureStorage;

  TokenUserIdStorage({required this.secureStorage});

  Future<Token> getToken() async {
    try {
      final token = await secureStorage.read(key: accessTokenKey);
      return Token(token);
    } catch (e) {
      throw CacheException(message: e.toString());
    }
  }

  Future setToken(Token jwtDto) async {
    try {
      await secureStorage.write(
        key: accessTokenKey,
        value: jwtDto.getOrDefaultValue(''),
      );
    } catch (e) {
      throw CacheException(message: e.toString());
    }
  }

  Future clear() async {
    try {
      await secureStorage.delete(key: accessTokenKey);
    } catch (e) {
      throw CacheException(message: e.toString());
    }
  }
}
