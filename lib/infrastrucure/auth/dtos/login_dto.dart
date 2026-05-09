// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mutual_fund_app/domain/auth/entities/login.dart';
import 'package:mutual_fund_app/domain/core/value/value_objects.dart';
part 'login_dto.freezed.dart';
part 'login_dto.g.dart';

@freezed
class LoginDto with _$LoginDto {
  const LoginDto._();
  factory LoginDto({
    @JsonKey(name: 'token', defaultValue: '') required String token,
  }) = _LoginDto;

  Login toDomain() => Login(token: Token(token));

  factory LoginDto.fromJson(Map<String, dynamic> json) =>
      _$LoginDtoFromJson(json);
}
