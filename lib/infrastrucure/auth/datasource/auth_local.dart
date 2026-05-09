import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:mutual_fund_app/config.dart';
import 'package:mutual_fund_app/domain/auth/entities/login.dart';
import 'package:mutual_fund_app/domain/auth/entities/user.dart';
import 'package:mutual_fund_app/infrastrucure/auth/dtos/login_dto.dart';
import 'package:mutual_fund_app/infrastrucure/auth/dtos/user_dto.dart';

class AuthLocalDataSource {
  final Config config;
  AuthLocalDataSource({required this.config});
  Future<Login> loginWithPassword({
    required String username,
    required String password,
  }) async {
    if (username == config.userName && password == config.password) {
      final String response = await rootBundle.loadString(
        'assets/jsons/login_response.json',
      );
      final data = jsonDecode(response);
      return LoginDto.fromJson(data['data']).toDomain();
    } else {
      throw Exception('Invalid username or password');
    }
  }

  Future<User> getUser() async {
    final res = json.decode(
      await rootBundle.loadString('assets/jsons/user_response.json'),
    );
    if (res['data'] != null) {
      return UserDto.fromJson(res['data']['user']).toDomain();
    } else {
      return User.empty();
    }
  }
}
