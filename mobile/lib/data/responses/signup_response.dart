import 'package:freezed_annotation/freezed_annotation.dart';

part 'signup_response.freezed.dart';
part 'signup_response.g.dart';

@freezed
abstract class Role with _$Role {
  const factory Role({
    required int id,
    required String name,
  }) = _Role;

  factory Role.fromJson(Map<String, dynamic> json) => _$RoleFromJson(json);
}

@freezed
abstract class User with _$User {
  const factory User({
    required int id,
    required String firstname,
    required String lastname,
    required String email,
    @JsonKey(name: 'phone_number') required String phoneNumber,
    required String nationality,
    required List<Role> roles,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@freezed
abstract class SignupResponse with _$SignupResponse {
  const factory SignupResponse({
    required User data,
  }) = _SignupResponse;

  factory SignupResponse.fromJson(Map<String, dynamic> json) => _$SignupResponseFromJson(json);
}