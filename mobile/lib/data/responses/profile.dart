import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile.freezed.dart';
part 'profile.g.dart';

@freezed
abstract class ProfileResponse with _$ProfileResponse {
  const factory ProfileResponse({
    required Profile data,
  }) = _ProfileResponse;

  factory ProfileResponse.fromJson(Map<String, dynamic> json) => _$ProfileResponseFromJson(json);
}

@freezed
abstract class Profile with _$Profile {
  const factory Profile({
    required int id,
    required String firstname,
    required String lastname,
    required String email,
    @JsonKey(name: 'profile_pic_url')
    required String profilePicUrl,
    @JsonKey(name: 'phone_number')
    required String phoneNumber,
    required String nationality,
    required List<Role> roles,
    @JsonKey(name: 'created_at')
    required DateTime createdAt,
    @JsonKey(name: 'updated_at')
    required DateTime updatedAt,
  }) = _Profile;

  factory Profile.fromJson(Map<String, dynamic> json) => _$ProfileFromJson(json);
}

@freezed
abstract class Role with _$Role {
  const factory Role({
    required int id,
    required String name,
  }) = _Role;

  factory Role.fromJson(Map<String, dynamic> json) => _$RoleFromJson(json);
}