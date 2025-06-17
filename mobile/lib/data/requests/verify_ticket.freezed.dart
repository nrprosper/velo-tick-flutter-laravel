// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_ticket.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VerifyTicketRequest {

 String get encryptedTicket;
/// Create a copy of VerifyTicketRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VerifyTicketRequestCopyWith<VerifyTicketRequest> get copyWith => _$VerifyTicketRequestCopyWithImpl<VerifyTicketRequest>(this as VerifyTicketRequest, _$identity);

  /// Serializes this VerifyTicketRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VerifyTicketRequest&&(identical(other.encryptedTicket, encryptedTicket) || other.encryptedTicket == encryptedTicket));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,encryptedTicket);

@override
String toString() {
  return 'VerifyTicketRequest(encryptedTicket: $encryptedTicket)';
}


}

/// @nodoc
abstract mixin class $VerifyTicketRequestCopyWith<$Res>  {
  factory $VerifyTicketRequestCopyWith(VerifyTicketRequest value, $Res Function(VerifyTicketRequest) _then) = _$VerifyTicketRequestCopyWithImpl;
@useResult
$Res call({
 String encryptedTicket
});




}
/// @nodoc
class _$VerifyTicketRequestCopyWithImpl<$Res>
    implements $VerifyTicketRequestCopyWith<$Res> {
  _$VerifyTicketRequestCopyWithImpl(this._self, this._then);

  final VerifyTicketRequest _self;
  final $Res Function(VerifyTicketRequest) _then;

/// Create a copy of VerifyTicketRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? encryptedTicket = null,}) {
  return _then(_self.copyWith(
encryptedTicket: null == encryptedTicket ? _self.encryptedTicket : encryptedTicket // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _VerifyTicketRequest implements VerifyTicketRequest {
  const _VerifyTicketRequest({required this.encryptedTicket});
  factory _VerifyTicketRequest.fromJson(Map<String, dynamic> json) => _$VerifyTicketRequestFromJson(json);

@override final  String encryptedTicket;

/// Create a copy of VerifyTicketRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VerifyTicketRequestCopyWith<_VerifyTicketRequest> get copyWith => __$VerifyTicketRequestCopyWithImpl<_VerifyTicketRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VerifyTicketRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VerifyTicketRequest&&(identical(other.encryptedTicket, encryptedTicket) || other.encryptedTicket == encryptedTicket));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,encryptedTicket);

@override
String toString() {
  return 'VerifyTicketRequest(encryptedTicket: $encryptedTicket)';
}


}

/// @nodoc
abstract mixin class _$VerifyTicketRequestCopyWith<$Res> implements $VerifyTicketRequestCopyWith<$Res> {
  factory _$VerifyTicketRequestCopyWith(_VerifyTicketRequest value, $Res Function(_VerifyTicketRequest) _then) = __$VerifyTicketRequestCopyWithImpl;
@override @useResult
$Res call({
 String encryptedTicket
});




}
/// @nodoc
class __$VerifyTicketRequestCopyWithImpl<$Res>
    implements _$VerifyTicketRequestCopyWith<$Res> {
  __$VerifyTicketRequestCopyWithImpl(this._self, this._then);

  final _VerifyTicketRequest _self;
  final $Res Function(_VerifyTicketRequest) _then;

/// Create a copy of VerifyTicketRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? encryptedTicket = null,}) {
  return _then(_VerifyTicketRequest(
encryptedTicket: null == encryptedTicket ? _self.encryptedTicket : encryptedTicket // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
