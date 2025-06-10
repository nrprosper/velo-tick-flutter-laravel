// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'single_schedule_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SeatAvailability {

@JsonKey(name: "seat_id") int get seatId;@JsonKey(name: "seat_number") String get seatNumber;@JsonKey(name: "is_booked") bool get isBooked;
/// Create a copy of SeatAvailability
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SeatAvailabilityCopyWith<SeatAvailability> get copyWith => _$SeatAvailabilityCopyWithImpl<SeatAvailability>(this as SeatAvailability, _$identity);

  /// Serializes this SeatAvailability to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SeatAvailability&&(identical(other.seatId, seatId) || other.seatId == seatId)&&(identical(other.seatNumber, seatNumber) || other.seatNumber == seatNumber)&&(identical(other.isBooked, isBooked) || other.isBooked == isBooked));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,seatId,seatNumber,isBooked);

@override
String toString() {
  return 'SeatAvailability(seatId: $seatId, seatNumber: $seatNumber, isBooked: $isBooked)';
}


}

/// @nodoc
abstract mixin class $SeatAvailabilityCopyWith<$Res>  {
  factory $SeatAvailabilityCopyWith(SeatAvailability value, $Res Function(SeatAvailability) _then) = _$SeatAvailabilityCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "seat_id") int seatId,@JsonKey(name: "seat_number") String seatNumber,@JsonKey(name: "is_booked") bool isBooked
});




}
/// @nodoc
class _$SeatAvailabilityCopyWithImpl<$Res>
    implements $SeatAvailabilityCopyWith<$Res> {
  _$SeatAvailabilityCopyWithImpl(this._self, this._then);

  final SeatAvailability _self;
  final $Res Function(SeatAvailability) _then;

/// Create a copy of SeatAvailability
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? seatId = null,Object? seatNumber = null,Object? isBooked = null,}) {
  return _then(_self.copyWith(
seatId: null == seatId ? _self.seatId : seatId // ignore: cast_nullable_to_non_nullable
as int,seatNumber: null == seatNumber ? _self.seatNumber : seatNumber // ignore: cast_nullable_to_non_nullable
as String,isBooked: null == isBooked ? _self.isBooked : isBooked // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _SeatAvailability implements SeatAvailability {
  const _SeatAvailability({@JsonKey(name: "seat_id") required this.seatId, @JsonKey(name: "seat_number") required this.seatNumber, @JsonKey(name: "is_booked") required this.isBooked});
  factory _SeatAvailability.fromJson(Map<String, dynamic> json) => _$SeatAvailabilityFromJson(json);

@override@JsonKey(name: "seat_id") final  int seatId;
@override@JsonKey(name: "seat_number") final  String seatNumber;
@override@JsonKey(name: "is_booked") final  bool isBooked;

/// Create a copy of SeatAvailability
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SeatAvailabilityCopyWith<_SeatAvailability> get copyWith => __$SeatAvailabilityCopyWithImpl<_SeatAvailability>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SeatAvailabilityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SeatAvailability&&(identical(other.seatId, seatId) || other.seatId == seatId)&&(identical(other.seatNumber, seatNumber) || other.seatNumber == seatNumber)&&(identical(other.isBooked, isBooked) || other.isBooked == isBooked));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,seatId,seatNumber,isBooked);

@override
String toString() {
  return 'SeatAvailability(seatId: $seatId, seatNumber: $seatNumber, isBooked: $isBooked)';
}


}

/// @nodoc
abstract mixin class _$SeatAvailabilityCopyWith<$Res> implements $SeatAvailabilityCopyWith<$Res> {
  factory _$SeatAvailabilityCopyWith(_SeatAvailability value, $Res Function(_SeatAvailability) _then) = __$SeatAvailabilityCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "seat_id") int seatId,@JsonKey(name: "seat_number") String seatNumber,@JsonKey(name: "is_booked") bool isBooked
});




}
/// @nodoc
class __$SeatAvailabilityCopyWithImpl<$Res>
    implements _$SeatAvailabilityCopyWith<$Res> {
  __$SeatAvailabilityCopyWithImpl(this._self, this._then);

  final _SeatAvailability _self;
  final $Res Function(_SeatAvailability) _then;

/// Create a copy of SeatAvailability
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? seatId = null,Object? seatNumber = null,Object? isBooked = null,}) {
  return _then(_SeatAvailability(
seatId: null == seatId ? _self.seatId : seatId // ignore: cast_nullable_to_non_nullable
as int,seatNumber: null == seatNumber ? _self.seatNumber : seatNumber // ignore: cast_nullable_to_non_nullable
as String,isBooked: null == isBooked ? _self.isBooked : isBooked // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$SingleScheduleResponse {

 int get id; String get bus; String get origin; String get destination;@JsonKey(name: "departure_time") DateTime get departureTime;@JsonKey(name: "arrival_time") DateTime get arrivalTime;@JsonKey(name: "total_seats") int get totalSeats; String get price;@JsonKey(name: "available_seats") int get availableSeats; List<SeatAvailability> get availabilities;@JsonKey(name: "created_at") DateTime get createdAt;@JsonKey(name: "updated_at") DateTime get updatedAt;
/// Create a copy of SingleScheduleResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SingleScheduleResponseCopyWith<SingleScheduleResponse> get copyWith => _$SingleScheduleResponseCopyWithImpl<SingleScheduleResponse>(this as SingleScheduleResponse, _$identity);

  /// Serializes this SingleScheduleResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SingleScheduleResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.bus, bus) || other.bus == bus)&&(identical(other.origin, origin) || other.origin == origin)&&(identical(other.destination, destination) || other.destination == destination)&&(identical(other.departureTime, departureTime) || other.departureTime == departureTime)&&(identical(other.arrivalTime, arrivalTime) || other.arrivalTime == arrivalTime)&&(identical(other.totalSeats, totalSeats) || other.totalSeats == totalSeats)&&(identical(other.price, price) || other.price == price)&&(identical(other.availableSeats, availableSeats) || other.availableSeats == availableSeats)&&const DeepCollectionEquality().equals(other.availabilities, availabilities)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,bus,origin,destination,departureTime,arrivalTime,totalSeats,price,availableSeats,const DeepCollectionEquality().hash(availabilities),createdAt,updatedAt);

@override
String toString() {
  return 'SingleScheduleResponse(id: $id, bus: $bus, origin: $origin, destination: $destination, departureTime: $departureTime, arrivalTime: $arrivalTime, totalSeats: $totalSeats, price: $price, availableSeats: $availableSeats, availabilities: $availabilities, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $SingleScheduleResponseCopyWith<$Res>  {
  factory $SingleScheduleResponseCopyWith(SingleScheduleResponse value, $Res Function(SingleScheduleResponse) _then) = _$SingleScheduleResponseCopyWithImpl;
@useResult
$Res call({
 int id, String bus, String origin, String destination,@JsonKey(name: "departure_time") DateTime departureTime,@JsonKey(name: "arrival_time") DateTime arrivalTime,@JsonKey(name: "total_seats") int totalSeats, String price,@JsonKey(name: "available_seats") int availableSeats, List<SeatAvailability> availabilities,@JsonKey(name: "created_at") DateTime createdAt,@JsonKey(name: "updated_at") DateTime updatedAt
});




}
/// @nodoc
class _$SingleScheduleResponseCopyWithImpl<$Res>
    implements $SingleScheduleResponseCopyWith<$Res> {
  _$SingleScheduleResponseCopyWithImpl(this._self, this._then);

  final SingleScheduleResponse _self;
  final $Res Function(SingleScheduleResponse) _then;

/// Create a copy of SingleScheduleResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? bus = null,Object? origin = null,Object? destination = null,Object? departureTime = null,Object? arrivalTime = null,Object? totalSeats = null,Object? price = null,Object? availableSeats = null,Object? availabilities = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,bus: null == bus ? _self.bus : bus // ignore: cast_nullable_to_non_nullable
as String,origin: null == origin ? _self.origin : origin // ignore: cast_nullable_to_non_nullable
as String,destination: null == destination ? _self.destination : destination // ignore: cast_nullable_to_non_nullable
as String,departureTime: null == departureTime ? _self.departureTime : departureTime // ignore: cast_nullable_to_non_nullable
as DateTime,arrivalTime: null == arrivalTime ? _self.arrivalTime : arrivalTime // ignore: cast_nullable_to_non_nullable
as DateTime,totalSeats: null == totalSeats ? _self.totalSeats : totalSeats // ignore: cast_nullable_to_non_nullable
as int,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String,availableSeats: null == availableSeats ? _self.availableSeats : availableSeats // ignore: cast_nullable_to_non_nullable
as int,availabilities: null == availabilities ? _self.availabilities : availabilities // ignore: cast_nullable_to_non_nullable
as List<SeatAvailability>,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _SingleScheduleResponse implements SingleScheduleResponse {
  const _SingleScheduleResponse({required this.id, required this.bus, required this.origin, required this.destination, @JsonKey(name: "departure_time") required this.departureTime, @JsonKey(name: "arrival_time") required this.arrivalTime, @JsonKey(name: "total_seats") required this.totalSeats, required this.price, @JsonKey(name: "available_seats") required this.availableSeats, required final  List<SeatAvailability> availabilities, @JsonKey(name: "created_at") required this.createdAt, @JsonKey(name: "updated_at") required this.updatedAt}): _availabilities = availabilities;
  factory _SingleScheduleResponse.fromJson(Map<String, dynamic> json) => _$SingleScheduleResponseFromJson(json);

@override final  int id;
@override final  String bus;
@override final  String origin;
@override final  String destination;
@override@JsonKey(name: "departure_time") final  DateTime departureTime;
@override@JsonKey(name: "arrival_time") final  DateTime arrivalTime;
@override@JsonKey(name: "total_seats") final  int totalSeats;
@override final  String price;
@override@JsonKey(name: "available_seats") final  int availableSeats;
 final  List<SeatAvailability> _availabilities;
@override List<SeatAvailability> get availabilities {
  if (_availabilities is EqualUnmodifiableListView) return _availabilities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_availabilities);
}

@override@JsonKey(name: "created_at") final  DateTime createdAt;
@override@JsonKey(name: "updated_at") final  DateTime updatedAt;

/// Create a copy of SingleScheduleResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SingleScheduleResponseCopyWith<_SingleScheduleResponse> get copyWith => __$SingleScheduleResponseCopyWithImpl<_SingleScheduleResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SingleScheduleResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SingleScheduleResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.bus, bus) || other.bus == bus)&&(identical(other.origin, origin) || other.origin == origin)&&(identical(other.destination, destination) || other.destination == destination)&&(identical(other.departureTime, departureTime) || other.departureTime == departureTime)&&(identical(other.arrivalTime, arrivalTime) || other.arrivalTime == arrivalTime)&&(identical(other.totalSeats, totalSeats) || other.totalSeats == totalSeats)&&(identical(other.price, price) || other.price == price)&&(identical(other.availableSeats, availableSeats) || other.availableSeats == availableSeats)&&const DeepCollectionEquality().equals(other._availabilities, _availabilities)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,bus,origin,destination,departureTime,arrivalTime,totalSeats,price,availableSeats,const DeepCollectionEquality().hash(_availabilities),createdAt,updatedAt);

@override
String toString() {
  return 'SingleScheduleResponse(id: $id, bus: $bus, origin: $origin, destination: $destination, departureTime: $departureTime, arrivalTime: $arrivalTime, totalSeats: $totalSeats, price: $price, availableSeats: $availableSeats, availabilities: $availabilities, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$SingleScheduleResponseCopyWith<$Res> implements $SingleScheduleResponseCopyWith<$Res> {
  factory _$SingleScheduleResponseCopyWith(_SingleScheduleResponse value, $Res Function(_SingleScheduleResponse) _then) = __$SingleScheduleResponseCopyWithImpl;
@override @useResult
$Res call({
 int id, String bus, String origin, String destination,@JsonKey(name: "departure_time") DateTime departureTime,@JsonKey(name: "arrival_time") DateTime arrivalTime,@JsonKey(name: "total_seats") int totalSeats, String price,@JsonKey(name: "available_seats") int availableSeats, List<SeatAvailability> availabilities,@JsonKey(name: "created_at") DateTime createdAt,@JsonKey(name: "updated_at") DateTime updatedAt
});




}
/// @nodoc
class __$SingleScheduleResponseCopyWithImpl<$Res>
    implements _$SingleScheduleResponseCopyWith<$Res> {
  __$SingleScheduleResponseCopyWithImpl(this._self, this._then);

  final _SingleScheduleResponse _self;
  final $Res Function(_SingleScheduleResponse) _then;

/// Create a copy of SingleScheduleResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? bus = null,Object? origin = null,Object? destination = null,Object? departureTime = null,Object? arrivalTime = null,Object? totalSeats = null,Object? price = null,Object? availableSeats = null,Object? availabilities = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_SingleScheduleResponse(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,bus: null == bus ? _self.bus : bus // ignore: cast_nullable_to_non_nullable
as String,origin: null == origin ? _self.origin : origin // ignore: cast_nullable_to_non_nullable
as String,destination: null == destination ? _self.destination : destination // ignore: cast_nullable_to_non_nullable
as String,departureTime: null == departureTime ? _self.departureTime : departureTime // ignore: cast_nullable_to_non_nullable
as DateTime,arrivalTime: null == arrivalTime ? _self.arrivalTime : arrivalTime // ignore: cast_nullable_to_non_nullable
as DateTime,totalSeats: null == totalSeats ? _self.totalSeats : totalSeats // ignore: cast_nullable_to_non_nullable
as int,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String,availableSeats: null == availableSeats ? _self.availableSeats : availableSeats // ignore: cast_nullable_to_non_nullable
as int,availabilities: null == availabilities ? _self._availabilities : availabilities // ignore: cast_nullable_to_non_nullable
as List<SeatAvailability>,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}


/// @nodoc
mixin _$ScheduleResponseWrapper {

 SingleScheduleResponse get data;
/// Create a copy of ScheduleResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ScheduleResponseWrapperCopyWith<ScheduleResponseWrapper> get copyWith => _$ScheduleResponseWrapperCopyWithImpl<ScheduleResponseWrapper>(this as ScheduleResponseWrapper, _$identity);

  /// Serializes this ScheduleResponseWrapper to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ScheduleResponseWrapper&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'ScheduleResponseWrapper(data: $data)';
}


}

/// @nodoc
abstract mixin class $ScheduleResponseWrapperCopyWith<$Res>  {
  factory $ScheduleResponseWrapperCopyWith(ScheduleResponseWrapper value, $Res Function(ScheduleResponseWrapper) _then) = _$ScheduleResponseWrapperCopyWithImpl;
@useResult
$Res call({
 SingleScheduleResponse data
});


$SingleScheduleResponseCopyWith<$Res> get data;

}
/// @nodoc
class _$ScheduleResponseWrapperCopyWithImpl<$Res>
    implements $ScheduleResponseWrapperCopyWith<$Res> {
  _$ScheduleResponseWrapperCopyWithImpl(this._self, this._then);

  final ScheduleResponseWrapper _self;
  final $Res Function(ScheduleResponseWrapper) _then;

/// Create a copy of ScheduleResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as SingleScheduleResponse,
  ));
}
/// Create a copy of ScheduleResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SingleScheduleResponseCopyWith<$Res> get data {
  
  return $SingleScheduleResponseCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _ScheduleResponseWrapper implements ScheduleResponseWrapper {
  const _ScheduleResponseWrapper({required this.data});
  factory _ScheduleResponseWrapper.fromJson(Map<String, dynamic> json) => _$ScheduleResponseWrapperFromJson(json);

@override final  SingleScheduleResponse data;

/// Create a copy of ScheduleResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ScheduleResponseWrapperCopyWith<_ScheduleResponseWrapper> get copyWith => __$ScheduleResponseWrapperCopyWithImpl<_ScheduleResponseWrapper>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ScheduleResponseWrapperToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ScheduleResponseWrapper&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'ScheduleResponseWrapper(data: $data)';
}


}

/// @nodoc
abstract mixin class _$ScheduleResponseWrapperCopyWith<$Res> implements $ScheduleResponseWrapperCopyWith<$Res> {
  factory _$ScheduleResponseWrapperCopyWith(_ScheduleResponseWrapper value, $Res Function(_ScheduleResponseWrapper) _then) = __$ScheduleResponseWrapperCopyWithImpl;
@override @useResult
$Res call({
 SingleScheduleResponse data
});


@override $SingleScheduleResponseCopyWith<$Res> get data;

}
/// @nodoc
class __$ScheduleResponseWrapperCopyWithImpl<$Res>
    implements _$ScheduleResponseWrapperCopyWith<$Res> {
  __$ScheduleResponseWrapperCopyWithImpl(this._self, this._then);

  final _ScheduleResponseWrapper _self;
  final $Res Function(_ScheduleResponseWrapper) _then;

/// Create a copy of ScheduleResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(_ScheduleResponseWrapper(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as SingleScheduleResponse,
  ));
}

/// Create a copy of ScheduleResponseWrapper
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SingleScheduleResponseCopyWith<$Res> get data {
  
  return $SingleScheduleResponseCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

// dart format on
