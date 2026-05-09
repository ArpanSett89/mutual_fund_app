import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mutual_fund_app/domain/core/value/value_objects.dart';
part 'login.freezed.dart';

@freezed
class Login with _$Login {
  const Login._();
  const factory Login({required Token token}) = _Login;

  factory Login.empty() => Login(token: Token(''));
}
