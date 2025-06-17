// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SignUpRequest {

 String get firstname; String get lastname; String get email; String get password;@JsonKey(name: 'password_confirmation') String get passwordConfirmation;@JsonKey(name: 'phone_number') String get phoneNumber; String get nationality;
/// Create a copy of SignUpRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignUpRequestCopyWith<SignUpRequest> get copyWith => _$SignUpRequestCopyWithImpl<SignUpRequest>(this as SignUpRequest, _$identity);

  /// Serializes this SignUpRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignUpRequest&&(identical(other.firstname, firstname) || other.firstname == firstname)&&(identical(other.lastname, lastname) || other.lastname == lastname)&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.passwordConfirmation, passwordConfirmation) || other.passwordConfirmation == passwordConfirmation)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.nationality, nationality) || other.nationality == nationality));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,firstname,lastname,email,password,passwordConfirmation,phoneNumber,nationality);

@override
String toString() {
  return 'SignUpRequest(firstname: $firstname, lastname: $lastname, email: $email, password: $password, passwordConfirmation: $passwordConfirmation, phoneNumber: $phoneNumber, nationality: $nationality)';
}


}

/// @nodoc
abstract mixin class $SignUpRequestCopyWith<$Res>  {
  factory $SignUpRequestCopyWith(SignUpRequest value, $Res Function(SignUpRequest) _then) = _$SignUpRequestCopyWithImpl;
@useResult
$Res call({
 String firstname, String lastname, String email, String password,@JsonKey(name: 'password_confirmation') String passwordConfirmation,@JsonKey(name: 'phone_number') String phoneNumber, String nationality
});




}
/// @nodoc
class _$SignUpRequestCopyWithImpl<$Res>
    implements $SignUpRequestCopyWith<$Res> {
  _$SignUpRequestCopyWithImpl(this._self, this._then);

  final SignUpRequest _self;
  final $Res Function(SignUpRequest) _then;

/// Create a copy of SignUpRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? firstname = null,Object? lastname = null,Object? email = null,Object? password = null,Object? passwordConfirmation = null,Object? phoneNumber = null,Object? nationality = null,}) {
  return _then(_self.copyWith(
firstname: null == firstname ? _self.firstname : firstname // ignore: cast_nullable_to_non_nullable
as String,lastname: null == lastname ? _self.lastname : lastname // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,passwordConfirmation: null == passwordConfirmation ? _self.passwordConfirmation : passwordConfirmation // ignore: cast_nullable_to_non_nullable
as String,phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,nationality: null == nationality ? _self.nationality : nationality // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _SignUpRequest implements SignUpRequest {
  const _SignUpRequest({required this.firstname, required this.lastname, required this.email, required this.password, @JsonKey(name: 'password_confirmation') required this.passwordConfirmation, @JsonKey(name: 'phone_number') required this.phoneNumber, required this.nationality});
  factory _SignUpRequest.fromJson(Map<String, dynamic> json) => _$SignUpRequestFromJson(json);

@override final  String firstname;
@override final  String lastname;
@override final  String email;
@override final  String password;
@override@JsonKey(name: 'password_confirmation') final  String passwordConfirmation;
@override@JsonKey(name: 'phone_number') final  String phoneNumber;
@override final  String nationality;

/// Create a copy of SignUpRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SignUpRequestCopyWith<_SignUpRequest> get copyWith => __$SignUpRequestCopyWithImpl<_SignUpRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SignUpRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignUpRequest&&(identical(other.firstname, firstname) || other.firstname == firstname)&&(identical(other.lastname, lastname) || other.lastname == lastname)&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.passwordConfirmation, passwordConfirmation) || other.passwordConfirmation == passwordConfirmation)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.nationality, nationality) || other.nationality == nationality));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,firstname,lastname,email,password,passwordConfirmation,phoneNumber,nationality);

@override
String toString() {
  return 'SignUpRequest(firstname: $firstname, lastname: $lastname, email: $email, password: $password, passwordConfirmation: $passwordConfirmation, phoneNumber: $phoneNumber, nationality: $nationality)';
}


}

/// @nodoc
abstract mixin class _$SignUpRequestCopyWith<$Res> implements $SignUpRequestCopyWith<$Res> {
  factory _$SignUpRequestCopyWith(_SignUpRequest value, $Res Function(_SignUpRequest) _then) = __$SignUpRequestCopyWithImpl;
@override @useResult
$Res call({
 String firstname, String lastname, String email, String password,@JsonKey(name: 'password_confirmation') String passwordConfirmation,@JsonKey(name: 'phone_number') String phoneNumber, String nationality
});




}
/// @nodoc
class __$SignUpRequestCopyWithImpl<$Res>
    implements _$SignUpRequestCopyWith<$Res> {
  __$SignUpRequestCopyWithImpl(this._self, this._then);

  final _SignUpRequest _self;
  final $Res Function(_SignUpRequest) _then;

/// Create a copy of SignUpRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? firstname = null,Object? lastname = null,Object? email = null,Object? password = null,Object? passwordConfirmation = null,Object? phoneNumber = null,Object? nationality = null,}) {
  return _then(_SignUpRequest(
firstname: null == firstname ? _self.firstname : firstname // ignore: cast_nullable_to_non_nullable
as String,lastname: null == lastname ? _self.lastname : lastname // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,passwordConfirmation: null == passwordConfirmation ? _self.passwordConfirmation : passwordConfirmation // ignore: cast_nullable_to_non_nullable
as String,phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,nationality: null == nationality ? _self.nationality : nationality // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
