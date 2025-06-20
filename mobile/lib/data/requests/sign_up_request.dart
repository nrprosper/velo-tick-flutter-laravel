import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_request.freezed.dart';
part 'sign_up_request.g.dart';

@freezed
abstract class SignUpRequest with _$SignUpRequest {
  const factory SignUpRequest({
    required String firstname,
    required String lastname,
    required String email,
    required String password,
    @JsonKey(name: 'password_confirmation')
    required String passwordConfirmation,
    @JsonKey(name: 'phone_number')
    required String phoneNumber,
    required String nationality,
  }) = _SignUpRequest;

  factory SignUpRequest.fromJson(Map<String, dynamic> json) =>
      _$SignUpRequestFromJson(json);
}