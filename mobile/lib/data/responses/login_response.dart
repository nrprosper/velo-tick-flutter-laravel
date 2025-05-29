import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_response.freezed.dart';
part 'login_response.g.dart';

@freezed
abstract class User with _$User {
  const factory User({
    required int id,
    required String firstname,
    required String lastname,
    required String phoneNumber,
    required String nationality,
    required int emailVerified,
    DateTime? emailVerifiedAt,
    required String profilePicUrl,
    required List<String> roles,
    required List<String> permissions,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@freezed
abstract class LoginResponse with _$LoginResponse {
  const factory LoginResponse({
    required String token,
    required User user,
  }) = _LoginResponse;

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
}