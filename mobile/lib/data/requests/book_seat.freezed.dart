// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book_seat.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BookSeatRequest {

 int get scheduleId; int get seatId;
/// Create a copy of BookSeatRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BookSeatRequestCopyWith<BookSeatRequest> get copyWith => _$BookSeatRequestCopyWithImpl<BookSeatRequest>(this as BookSeatRequest, _$identity);

  /// Serializes this BookSeatRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookSeatRequest&&(identical(other.scheduleId, scheduleId) || other.scheduleId == scheduleId)&&(identical(other.seatId, seatId) || other.seatId == seatId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,scheduleId,seatId);

@override
String toString() {
  return 'BookSeatRequest(scheduleId: $scheduleId, seatId: $seatId)';
}


}

/// @nodoc
abstract mixin class $BookSeatRequestCopyWith<$Res>  {
  factory $BookSeatRequestCopyWith(BookSeatRequest value, $Res Function(BookSeatRequest) _then) = _$BookSeatRequestCopyWithImpl;
@useResult
$Res call({
 int scheduleId, int seatId
});




}
/// @nodoc
class _$BookSeatRequestCopyWithImpl<$Res>
    implements $BookSeatRequestCopyWith<$Res> {
  _$BookSeatRequestCopyWithImpl(this._self, this._then);

  final BookSeatRequest _self;
  final $Res Function(BookSeatRequest) _then;

/// Create a copy of BookSeatRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? scheduleId = null,Object? seatId = null,}) {
  return _then(_self.copyWith(
scheduleId: null == scheduleId ? _self.scheduleId : scheduleId // ignore: cast_nullable_to_non_nullable
as int,seatId: null == seatId ? _self.seatId : seatId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _BookSeatRequest implements BookSeatRequest {
  const _BookSeatRequest({required this.scheduleId, required this.seatId});
  factory _BookSeatRequest.fromJson(Map<String, dynamic> json) => _$BookSeatRequestFromJson(json);

@override final  int scheduleId;
@override final  int seatId;

/// Create a copy of BookSeatRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BookSeatRequestCopyWith<_BookSeatRequest> get copyWith => __$BookSeatRequestCopyWithImpl<_BookSeatRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BookSeatRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BookSeatRequest&&(identical(other.scheduleId, scheduleId) || other.scheduleId == scheduleId)&&(identical(other.seatId, seatId) || other.seatId == seatId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,scheduleId,seatId);

@override
String toString() {
  return 'BookSeatRequest(scheduleId: $scheduleId, seatId: $seatId)';
}


}

/// @nodoc
abstract mixin class _$BookSeatRequestCopyWith<$Res> implements $BookSeatRequestCopyWith<$Res> {
  factory _$BookSeatRequestCopyWith(_BookSeatRequest value, $Res Function(_BookSeatRequest) _then) = __$BookSeatRequestCopyWithImpl;
@override @useResult
$Res call({
 int scheduleId, int seatId
});




}
/// @nodoc
class __$BookSeatRequestCopyWithImpl<$Res>
    implements _$BookSeatRequestCopyWith<$Res> {
  __$BookSeatRequestCopyWithImpl(this._self, this._then);

  final _BookSeatRequest _self;
  final $Res Function(_BookSeatRequest) _then;

/// Create a copy of BookSeatRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? scheduleId = null,Object? seatId = null,}) {
  return _then(_BookSeatRequest(
scheduleId: null == scheduleId ? _self.scheduleId : scheduleId // ignore: cast_nullable_to_non_nullable
as int,seatId: null == seatId ? _self.seatId : seatId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
