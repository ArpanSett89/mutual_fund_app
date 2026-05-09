import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mutual_fund_app/domain/core/value/value_objects.dart';

part 'user.freezed.dart';

@freezed
class User with _$User {
  const User._();

  const factory User({
    required String id,
    required String userName,
    required String email,
    required String fullName,
    required StringValue name,
    required String phoneNumber,
    required String dateOfBirth,
    required String gender,
  }) = _User;

  factory User.empty() => User(
    id: '',
    userName: '',
    email: '',
    fullName: '',
    phoneNumber: '',
    dateOfBirth: '',
    gender: '',
    name: StringValue(''),
  );
}
