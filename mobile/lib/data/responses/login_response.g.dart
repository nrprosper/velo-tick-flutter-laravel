// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_User _$UserFromJson(Map<String, dynamic> json) => _User(
  id: (json['id'] as num).toInt(),
  firstname: json['firstname'] as String,
  lastname: json['lastname'] as String,
  phoneNumber: json['phone_number'] as String,
  nationality: json['nationality'] as String,
  emailVerified: (json['email_verified'] as num).toInt(),
  emailVerifiedAt:
      json['email_verified_at'] == null
          ? null
          : DateTime.parse(json['email_verified_at'] as String),
  profilePicUrl: json['profile_pic_url'] as String,
  roles: (json['roles'] as List<dynamic>).map((e) => e as String).toList(),
  permissions:
      (json['permissions'] as List<dynamic>).map((e) => e as String).toList(),
);

Map<String, dynamic> _$UserToJson(_User instance) => <String, dynamic>{
  'id': instance.id,
  'firstname': instance.firstname,
  'lastname': instance.lastname,
  'phone_number': instance.phoneNumber,
  'nationality': instance.nationality,
  'email_verified': instance.emailVerified,
  'email_verified_at': instance.emailVerifiedAt?.toIso8601String(),
  'profile_pic_url': instance.profilePicUrl,
  'roles': instance.roles,
  'permissions': instance.permissions,
};

_LoginResponse _$LoginResponseFromJson(Map<String, dynamic> json) =>
    _LoginResponse(
      token: json['token'] as String,
      user: User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LoginResponseToJson(_LoginResponse instance) =>
    <String, dynamic>{'token': instance.token, 'user': instance.user};
