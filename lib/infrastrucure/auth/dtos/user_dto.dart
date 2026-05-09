import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mutual_fund_app/domain/auth/entities/user.dart';
import 'package:mutual_fund_app/domain/core/value/value_objects.dart';

part 'user_dto.freezed.dart';
part 'user_dto.g.dart';

@freezed
class UserDto with _$UserDto {
  const UserDto._();

  const factory UserDto({
    @JsonKey(name: 'id', defaultValue: '') required String id,
    @JsonKey(name: 'userName', defaultValue: '') required String userName,
    @JsonKey(name: 'full_name', defaultValue: '') required String fullName,
    @JsonKey(name: 'email', defaultValue: '') required String email,
    @JsonKey(name: 'phoneNumber', defaultValue: '') required String phoneNumber,
    @JsonKey(name: 'dateOfBirth', defaultValue: '') required String dateOfBirth,
    @JsonKey(name: 'gender', defaultValue: '') required String gender,
  }) = _UserDto;

  factory UserDto.fromDomain(User user) {
    return UserDto(
      id: user.id,
      userName: user.userName,
      fullName: user.fullName,
      email: user.email,
      phoneNumber: user.phoneNumber,
      dateOfBirth: user.dateOfBirth,
      gender: user.gender,
    );
  }

  User toDomain() {
    return User(
      id: id,
      userName: userName,
      email: email,
      fullName: fullName,
      phoneNumber: phoneNumber,
      dateOfBirth: dateOfBirth,
      gender: gender,
      name: StringValue(fullName),
    );
  }

  static const empty = UserDto(
    id: '',
    userName: '',
    email: '',
    fullName: '',
    phoneNumber: '',
    dateOfBirth: '',
    gender: '',
  );

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);
}
