// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'buy_ticket_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Route {

 int get id; String get origin; String get destination; String get price;@JsonKey(name: 'distance_km') int get distanceKm;@JsonKey(name: 'travel_time') String get travelTime;@JsonKey(name: 'route_code') String get routeCode;@JsonKey(name: 'created_at') DateTime get createdAt;@JsonKey(name: 'updated_at') DateTime get updatedAt;
/// Create a copy of Route
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RouteCopyWith<Route> get copyWith => _$RouteCopyWithImpl<Route>(this as Route, _$identity);

  /// Serializes this Route to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Route&&(identical(other.id, id) || other.id == id)&&(identical(other.origin, origin) || other.origin == origin)&&(identical(other.destination, destination) || other.destination == destination)&&(identical(other.price, price) || other.price == price)&&(identical(other.distanceKm, distanceKm) || other.distanceKm == distanceKm)&&(identical(other.travelTime, travelTime) || other.travelTime == travelTime)&&(identical(other.routeCode, routeCode) || other.routeCode == routeCode)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,origin,destination,price,distanceKm,travelTime,routeCode,createdAt,updatedAt);

@override
String toString() {
  return 'Route(id: $id, origin: $origin, destination: $destination, price: $price, distanceKm: $distanceKm, travelTime: $travelTime, routeCode: $routeCode, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $RouteCopyWith<$Res>  {
  factory $RouteCopyWith(Route value, $Res Function(Route) _then) = _$RouteCopyWithImpl;
@useResult
$Res call({
 int id, String origin, String destination, String price,@JsonKey(name: 'distance_km') int distanceKm,@JsonKey(name: 'travel_time') String travelTime,@JsonKey(name: 'route_code') String routeCode,@JsonKey(name: 'created_at') DateTime createdAt,@JsonKey(name: 'updated_at') DateTime updatedAt
});




}
/// @nodoc
class _$RouteCopyWithImpl<$Res>
    implements $RouteCopyWith<$Res> {
  _$RouteCopyWithImpl(this._self, this._then);

  final Route _self;
  final $Res Function(Route) _then;

/// Create a copy of Route
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? origin = null,Object? destination = null,Object? price = null,Object? distanceKm = null,Object? travelTime = null,Object? routeCode = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,origin: null == origin ? _self.origin : origin // ignore: cast_nullable_to_non_nullable
as String,destination: null == destination ? _self.destination : destination // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String,distanceKm: null == distanceKm ? _self.distanceKm : distanceKm // ignore: cast_nullable_to_non_nullable
as int,travelTime: null == travelTime ? _self.travelTime : travelTime // ignore: cast_nullable_to_non_nullable
as String,routeCode: null == routeCode ? _self.routeCode : routeCode // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Route implements Route {
  const _Route({required this.id, required this.origin, required this.destination, required this.price, @JsonKey(name: 'distance_km') required this.distanceKm, @JsonKey(name: 'travel_time') required this.travelTime, @JsonKey(name: 'route_code') required this.routeCode, @JsonKey(name: 'created_at') required this.createdAt, @JsonKey(name: 'updated_at') required this.updatedAt});
  factory _Route.fromJson(Map<String, dynamic> json) => _$RouteFromJson(json);

@override final  int id;
@override final  String origin;
@override final  String destination;
@override final  String price;
@override@JsonKey(name: 'distance_km') final  int distanceKm;
@override@JsonKey(name: 'travel_time') final  String travelTime;
@override@JsonKey(name: 'route_code') final  String routeCode;
@override@JsonKey(name: 'created_at') final  DateTime createdAt;
@override@JsonKey(name: 'updated_at') final  DateTime updatedAt;

/// Create a copy of Route
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RouteCopyWith<_Route> get copyWith => __$RouteCopyWithImpl<_Route>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RouteToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Route&&(identical(other.id, id) || other.id == id)&&(identical(other.origin, origin) || other.origin == origin)&&(identical(other.destination, destination) || other.destination == destination)&&(identical(other.price, price) || other.price == price)&&(identical(other.distanceKm, distanceKm) || other.distanceKm == distanceKm)&&(identical(other.travelTime, travelTime) || other.travelTime == travelTime)&&(identical(other.routeCode, routeCode) || other.routeCode == routeCode)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,origin,destination,price,distanceKm,travelTime,routeCode,createdAt,updatedAt);

@override
String toString() {
  return 'Route(id: $id, origin: $origin, destination: $destination, price: $price, distanceKm: $distanceKm, travelTime: $travelTime, routeCode: $routeCode, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$RouteCopyWith<$Res> implements $RouteCopyWith<$Res> {
  factory _$RouteCopyWith(_Route value, $Res Function(_Route) _then) = __$RouteCopyWithImpl;
@override @useResult
$Res call({
 int id, String origin, String destination, String price,@JsonKey(name: 'distance_km') int distanceKm,@JsonKey(name: 'travel_time') String travelTime,@JsonKey(name: 'route_code') String routeCode,@JsonKey(name: 'created_at') DateTime createdAt,@JsonKey(name: 'updated_at') DateTime updatedAt
});




}
/// @nodoc
class __$RouteCopyWithImpl<$Res>
    implements _$RouteCopyWith<$Res> {
  __$RouteCopyWithImpl(this._self, this._then);

  final _Route _self;
  final $Res Function(_Route) _then;

/// Create a copy of Route
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? origin = null,Object? destination = null,Object? price = null,Object? distanceKm = null,Object? travelTime = null,Object? routeCode = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_Route(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,origin: null == origin ? _self.origin : origin // ignore: cast_nullable_to_non_nullable
as String,destination: null == destination ? _self.destination : destination // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String,distanceKm: null == distanceKm ? _self.distanceKm : distanceKm // ignore: cast_nullable_to_non_nullable
as int,travelTime: null == travelTime ? _self.travelTime : travelTime // ignore: cast_nullable_to_non_nullable
as String,routeCode: null == routeCode ? _self.routeCode : routeCode // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}


/// @nodoc
mixin _$Schedule {

 int get id;@JsonKey(name: 'bus_id') int get busId;@JsonKey(name: 'route_id') int get routeId;@JsonKey(name: 'departure_time') DateTime get departureTime;@JsonKey(name: 'arrival_time') DateTime get arrivalTime;@JsonKey(name: 'created_at') DateTime get createdAt;@JsonKey(name: 'updated_at') DateTime get updatedAt; Route get route;
/// Create a copy of Schedule
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ScheduleCopyWith<Schedule> get copyWith => _$ScheduleCopyWithImpl<Schedule>(this as Schedule, _$identity);

  /// Serializes this Schedule to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Schedule&&(identical(other.id, id) || other.id == id)&&(identical(other.busId, busId) || other.busId == busId)&&(identical(other.routeId, routeId) || other.routeId == routeId)&&(identical(other.departureTime, departureTime) || other.departureTime == departureTime)&&(identical(other.arrivalTime, arrivalTime) || other.arrivalTime == arrivalTime)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.route, route) || other.route == route));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,busId,routeId,departureTime,arrivalTime,createdAt,updatedAt,route);

@override
String toString() {
  return 'Schedule(id: $id, busId: $busId, routeId: $routeId, departureTime: $departureTime, arrivalTime: $arrivalTime, createdAt: $createdAt, updatedAt: $updatedAt, route: $route)';
}


}

/// @nodoc
abstract mixin class $ScheduleCopyWith<$Res>  {
  factory $ScheduleCopyWith(Schedule value, $Res Function(Schedule) _then) = _$ScheduleCopyWithImpl;
@useResult
$Res call({
 int id,@JsonKey(name: 'bus_id') int busId,@JsonKey(name: 'route_id') int routeId,@JsonKey(name: 'departure_time') DateTime departureTime,@JsonKey(name: 'arrival_time') DateTime arrivalTime,@JsonKey(name: 'created_at') DateTime createdAt,@JsonKey(name: 'updated_at') DateTime updatedAt, Route route
});


$RouteCopyWith<$Res> get route;

}
/// @nodoc
class _$ScheduleCopyWithImpl<$Res>
    implements $ScheduleCopyWith<$Res> {
  _$ScheduleCopyWithImpl(this._self, this._then);

  final Schedule _self;
  final $Res Function(Schedule) _then;

/// Create a copy of Schedule
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? busId = null,Object? routeId = null,Object? departureTime = null,Object? arrivalTime = null,Object? createdAt = null,Object? updatedAt = null,Object? route = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,busId: null == busId ? _self.busId : busId // ignore: cast_nullable_to_non_nullable
as int,routeId: null == routeId ? _self.routeId : routeId // ignore: cast_nullable_to_non_nullable
as int,departureTime: null == departureTime ? _self.departureTime : departureTime // ignore: cast_nullable_to_non_nullable
as DateTime,arrivalTime: null == arrivalTime ? _self.arrivalTime : arrivalTime // ignore: cast_nullable_to_non_nullable
as DateTime,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,route: null == route ? _self.route : route // ignore: cast_nullable_to_non_nullable
as Route,
  ));
}
/// Create a copy of Schedule
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RouteCopyWith<$Res> get route {
  
  return $RouteCopyWith<$Res>(_self.route, (value) {
    return _then(_self.copyWith(route: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _Schedule implements Schedule {
  const _Schedule({required this.id, @JsonKey(name: 'bus_id') required this.busId, @JsonKey(name: 'route_id') required this.routeId, @JsonKey(name: 'departure_time') required this.departureTime, @JsonKey(name: 'arrival_time') required this.arrivalTime, @JsonKey(name: 'created_at') required this.createdAt, @JsonKey(name: 'updated_at') required this.updatedAt, required this.route});
  factory _Schedule.fromJson(Map<String, dynamic> json) => _$ScheduleFromJson(json);

@override final  int id;
@override@JsonKey(name: 'bus_id') final  int busId;
@override@JsonKey(name: 'route_id') final  int routeId;
@override@JsonKey(name: 'departure_time') final  DateTime departureTime;
@override@JsonKey(name: 'arrival_time') final  DateTime arrivalTime;
@override@JsonKey(name: 'created_at') final  DateTime createdAt;
@override@JsonKey(name: 'updated_at') final  DateTime updatedAt;
@override final  Route route;

/// Create a copy of Schedule
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ScheduleCopyWith<_Schedule> get copyWith => __$ScheduleCopyWithImpl<_Schedule>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ScheduleToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Schedule&&(identical(other.id, id) || other.id == id)&&(identical(other.busId, busId) || other.busId == busId)&&(identical(other.routeId, routeId) || other.routeId == routeId)&&(identical(other.departureTime, departureTime) || other.departureTime == departureTime)&&(identical(other.arrivalTime, arrivalTime) || other.arrivalTime == arrivalTime)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.route, route) || other.route == route));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,busId,routeId,departureTime,arrivalTime,createdAt,updatedAt,route);

@override
String toString() {
  return 'Schedule(id: $id, busId: $busId, routeId: $routeId, departureTime: $departureTime, arrivalTime: $arrivalTime, createdAt: $createdAt, updatedAt: $updatedAt, route: $route)';
}


}

/// @nodoc
abstract mixin class _$ScheduleCopyWith<$Res> implements $ScheduleCopyWith<$Res> {
  factory _$ScheduleCopyWith(_Schedule value, $Res Function(_Schedule) _then) = __$ScheduleCopyWithImpl;
@override @useResult
$Res call({
 int id,@JsonKey(name: 'bus_id') int busId,@JsonKey(name: 'route_id') int routeId,@JsonKey(name: 'departure_time') DateTime departureTime,@JsonKey(name: 'arrival_time') DateTime arrivalTime,@JsonKey(name: 'created_at') DateTime createdAt,@JsonKey(name: 'updated_at') DateTime updatedAt, Route route
});


@override $RouteCopyWith<$Res> get route;

}
/// @nodoc
class __$ScheduleCopyWithImpl<$Res>
    implements _$ScheduleCopyWith<$Res> {
  __$ScheduleCopyWithImpl(this._self, this._then);

  final _Schedule _self;
  final $Res Function(_Schedule) _then;

/// Create a copy of Schedule
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? busId = null,Object? routeId = null,Object? departureTime = null,Object? arrivalTime = null,Object? createdAt = null,Object? updatedAt = null,Object? route = null,}) {
  return _then(_Schedule(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,busId: null == busId ? _self.busId : busId // ignore: cast_nullable_to_non_nullable
as int,routeId: null == routeId ? _self.routeId : routeId // ignore: cast_nullable_to_non_nullable
as int,departureTime: null == departureTime ? _self.departureTime : departureTime // ignore: cast_nullable_to_non_nullable
as DateTime,arrivalTime: null == arrivalTime ? _self.arrivalTime : arrivalTime // ignore: cast_nullable_to_non_nullable
as DateTime,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,route: null == route ? _self.route : route // ignore: cast_nullable_to_non_nullable
as Route,
  ));
}

/// Create a copy of Schedule
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RouteCopyWith<$Res> get route {
  
  return $RouteCopyWith<$Res>(_self.route, (value) {
    return _then(_self.copyWith(route: value));
  });
}
}


/// @nodoc
mixin _$Seat {

 int get id;@JsonKey(name: 'seat_number') String get seatNumber;@JsonKey(name: 'bus_id') int get busId;@JsonKey(name: 'created_at') DateTime get createdAt;@JsonKey(name: 'updated_at') DateTime get updatedAt;
/// Create a copy of Seat
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SeatCopyWith<Seat> get copyWith => _$SeatCopyWithImpl<Seat>(this as Seat, _$identity);

  /// Serializes this Seat to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Seat&&(identical(other.id, id) || other.id == id)&&(identical(other.seatNumber, seatNumber) || other.seatNumber == seatNumber)&&(identical(other.busId, busId) || other.busId == busId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,seatNumber,busId,createdAt,updatedAt);

@override
String toString() {
  return 'Seat(id: $id, seatNumber: $seatNumber, busId: $busId, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $SeatCopyWith<$Res>  {
  factory $SeatCopyWith(Seat value, $Res Function(Seat) _then) = _$SeatCopyWithImpl;
@useResult
$Res call({
 int id,@JsonKey(name: 'seat_number') String seatNumber,@JsonKey(name: 'bus_id') int busId,@JsonKey(name: 'created_at') DateTime createdAt,@JsonKey(name: 'updated_at') DateTime updatedAt
});




}
/// @nodoc
class _$SeatCopyWithImpl<$Res>
    implements $SeatCopyWith<$Res> {
  _$SeatCopyWithImpl(this._self, this._then);

  final Seat _self;
  final $Res Function(Seat) _then;

/// Create a copy of Seat
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? seatNumber = null,Object? busId = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,seatNumber: null == seatNumber ? _self.seatNumber : seatNumber // ignore: cast_nullable_to_non_nullable
as String,busId: null == busId ? _self.busId : busId // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Seat implements Seat {
  const _Seat({required this.id, @JsonKey(name: 'seat_number') required this.seatNumber, @JsonKey(name: 'bus_id') required this.busId, @JsonKey(name: 'created_at') required this.createdAt, @JsonKey(name: 'updated_at') required this.updatedAt});
  factory _Seat.fromJson(Map<String, dynamic> json) => _$SeatFromJson(json);

@override final  int id;
@override@JsonKey(name: 'seat_number') final  String seatNumber;
@override@JsonKey(name: 'bus_id') final  int busId;
@override@JsonKey(name: 'created_at') final  DateTime createdAt;
@override@JsonKey(name: 'updated_at') final  DateTime updatedAt;

/// Create a copy of Seat
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SeatCopyWith<_Seat> get copyWith => __$SeatCopyWithImpl<_Seat>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SeatToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Seat&&(identical(other.id, id) || other.id == id)&&(identical(other.seatNumber, seatNumber) || other.seatNumber == seatNumber)&&(identical(other.busId, busId) || other.busId == busId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,seatNumber,busId,createdAt,updatedAt);

@override
String toString() {
  return 'Seat(id: $id, seatNumber: $seatNumber, busId: $busId, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$SeatCopyWith<$Res> implements $SeatCopyWith<$Res> {
  factory _$SeatCopyWith(_Seat value, $Res Function(_Seat) _then) = __$SeatCopyWithImpl;
@override @useResult
$Res call({
 int id,@JsonKey(name: 'seat_number') String seatNumber,@JsonKey(name: 'bus_id') int busId,@JsonKey(name: 'created_at') DateTime createdAt,@JsonKey(name: 'updated_at') DateTime updatedAt
});




}
/// @nodoc
class __$SeatCopyWithImpl<$Res>
    implements _$SeatCopyWith<$Res> {
  __$SeatCopyWithImpl(this._self, this._then);

  final _Seat _self;
  final $Res Function(_Seat) _then;

/// Create a copy of Seat
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? seatNumber = null,Object? busId = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_Seat(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,seatNumber: null == seatNumber ? _self.seatNumber : seatNumber // ignore: cast_nullable_to_non_nullable
as String,busId: null == busId ? _self.busId : busId // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}


/// @nodoc
mixin _$BuyTicketResponse {

 int get id;@JsonKey(name: 'user_id') int get userId;@JsonKey(name: 'schedule_id') int get scheduleId;@JsonKey(name: 'seat_id') int get seatId;@JsonKey(name: 'created_at') DateTime get createdAt;@JsonKey(name: 'updated_at') DateTime get updatedAt;@JsonKey(name: 'qr_code_url') String get qrCodeUrl;@JsonKey(name: 'qr_code_public_id') String get qrCodePublicId; Schedule get schedule; Seat get seat;
/// Create a copy of BuyTicketResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BuyTicketResponseCopyWith<BuyTicketResponse> get copyWith => _$BuyTicketResponseCopyWithImpl<BuyTicketResponse>(this as BuyTicketResponse, _$identity);

  /// Serializes this BuyTicketResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BuyTicketResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.scheduleId, scheduleId) || other.scheduleId == scheduleId)&&(identical(other.seatId, seatId) || other.seatId == seatId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.qrCodeUrl, qrCodeUrl) || other.qrCodeUrl == qrCodeUrl)&&(identical(other.qrCodePublicId, qrCodePublicId) || other.qrCodePublicId == qrCodePublicId)&&(identical(other.schedule, schedule) || other.schedule == schedule)&&(identical(other.seat, seat) || other.seat == seat));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,scheduleId,seatId,createdAt,updatedAt,qrCodeUrl,qrCodePublicId,schedule,seat);

@override
String toString() {
  return 'BuyTicketResponse(id: $id, userId: $userId, scheduleId: $scheduleId, seatId: $seatId, createdAt: $createdAt, updatedAt: $updatedAt, qrCodeUrl: $qrCodeUrl, qrCodePublicId: $qrCodePublicId, schedule: $schedule, seat: $seat)';
}


}

/// @nodoc
abstract mixin class $BuyTicketResponseCopyWith<$Res>  {
  factory $BuyTicketResponseCopyWith(BuyTicketResponse value, $Res Function(BuyTicketResponse) _then) = _$BuyTicketResponseCopyWithImpl;
@useResult
$Res call({
 int id,@JsonKey(name: 'user_id') int userId,@JsonKey(name: 'schedule_id') int scheduleId,@JsonKey(name: 'seat_id') int seatId,@JsonKey(name: 'created_at') DateTime createdAt,@JsonKey(name: 'updated_at') DateTime updatedAt,@JsonKey(name: 'qr_code_url') String qrCodeUrl,@JsonKey(name: 'qr_code_public_id') String qrCodePublicId, Schedule schedule, Seat seat
});


$ScheduleCopyWith<$Res> get schedule;$SeatCopyWith<$Res> get seat;

}
/// @nodoc
class _$BuyTicketResponseCopyWithImpl<$Res>
    implements $BuyTicketResponseCopyWith<$Res> {
  _$BuyTicketResponseCopyWithImpl(this._self, this._then);

  final BuyTicketResponse _self;
  final $Res Function(BuyTicketResponse) _then;

/// Create a copy of BuyTicketResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = null,Object? scheduleId = null,Object? seatId = null,Object? createdAt = null,Object? updatedAt = null,Object? qrCodeUrl = null,Object? qrCodePublicId = null,Object? schedule = null,Object? seat = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,scheduleId: null == scheduleId ? _self.scheduleId : scheduleId // ignore: cast_nullable_to_non_nullable
as int,seatId: null == seatId ? _self.seatId : seatId // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,qrCodeUrl: null == qrCodeUrl ? _self.qrCodeUrl : qrCodeUrl // ignore: cast_nullable_to_non_nullable
as String,qrCodePublicId: null == qrCodePublicId ? _self.qrCodePublicId : qrCodePublicId // ignore: cast_nullable_to_non_nullable
as String,schedule: null == schedule ? _self.schedule : schedule // ignore: cast_nullable_to_non_nullable
as Schedule,seat: null == seat ? _self.seat : seat // ignore: cast_nullable_to_non_nullable
as Seat,
  ));
}
/// Create a copy of BuyTicketResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ScheduleCopyWith<$Res> get schedule {
  
  return $ScheduleCopyWith<$Res>(_self.schedule, (value) {
    return _then(_self.copyWith(schedule: value));
  });
}/// Create a copy of BuyTicketResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SeatCopyWith<$Res> get seat {
  
  return $SeatCopyWith<$Res>(_self.seat, (value) {
    return _then(_self.copyWith(seat: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _BuyTicketResponse implements BuyTicketResponse {
  const _BuyTicketResponse({required this.id, @JsonKey(name: 'user_id') required this.userId, @JsonKey(name: 'schedule_id') required this.scheduleId, @JsonKey(name: 'seat_id') required this.seatId, @JsonKey(name: 'created_at') required this.createdAt, @JsonKey(name: 'updated_at') required this.updatedAt, @JsonKey(name: 'qr_code_url') required this.qrCodeUrl, @JsonKey(name: 'qr_code_public_id') required this.qrCodePublicId, required this.schedule, required this.seat});
  factory _BuyTicketResponse.fromJson(Map<String, dynamic> json) => _$BuyTicketResponseFromJson(json);

@override final  int id;
@override@JsonKey(name: 'user_id') final  int userId;
@override@JsonKey(name: 'schedule_id') final  int scheduleId;
@override@JsonKey(name: 'seat_id') final  int seatId;
@override@JsonKey(name: 'created_at') final  DateTime createdAt;
@override@JsonKey(name: 'updated_at') final  DateTime updatedAt;
@override@JsonKey(name: 'qr_code_url') final  String qrCodeUrl;
@override@JsonKey(name: 'qr_code_public_id') final  String qrCodePublicId;
@override final  Schedule schedule;
@override final  Seat seat;

/// Create a copy of BuyTicketResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BuyTicketResponseCopyWith<_BuyTicketResponse> get copyWith => __$BuyTicketResponseCopyWithImpl<_BuyTicketResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BuyTicketResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BuyTicketResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.scheduleId, scheduleId) || other.scheduleId == scheduleId)&&(identical(other.seatId, seatId) || other.seatId == seatId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.qrCodeUrl, qrCodeUrl) || other.qrCodeUrl == qrCodeUrl)&&(identical(other.qrCodePublicId, qrCodePublicId) || other.qrCodePublicId == qrCodePublicId)&&(identical(other.schedule, schedule) || other.schedule == schedule)&&(identical(other.seat, seat) || other.seat == seat));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,scheduleId,seatId,createdAt,updatedAt,qrCodeUrl,qrCodePublicId,schedule,seat);

@override
String toString() {
  return 'BuyTicketResponse(id: $id, userId: $userId, scheduleId: $scheduleId, seatId: $seatId, createdAt: $createdAt, updatedAt: $updatedAt, qrCodeUrl: $qrCodeUrl, qrCodePublicId: $qrCodePublicId, schedule: $schedule, seat: $seat)';
}


}

/// @nodoc
abstract mixin class _$BuyTicketResponseCopyWith<$Res> implements $BuyTicketResponseCopyWith<$Res> {
  factory _$BuyTicketResponseCopyWith(_BuyTicketResponse value, $Res Function(_BuyTicketResponse) _then) = __$BuyTicketResponseCopyWithImpl;
@override @useResult
$Res call({
 int id,@JsonKey(name: 'user_id') int userId,@JsonKey(name: 'schedule_id') int scheduleId,@JsonKey(name: 'seat_id') int seatId,@JsonKey(name: 'created_at') DateTime createdAt,@JsonKey(name: 'updated_at') DateTime updatedAt,@JsonKey(name: 'qr_code_url') String qrCodeUrl,@JsonKey(name: 'qr_code_public_id') String qrCodePublicId, Schedule schedule, Seat seat
});


@override $ScheduleCopyWith<$Res> get schedule;@override $SeatCopyWith<$Res> get seat;

}
/// @nodoc
class __$BuyTicketResponseCopyWithImpl<$Res>
    implements _$BuyTicketResponseCopyWith<$Res> {
  __$BuyTicketResponseCopyWithImpl(this._self, this._then);

  final _BuyTicketResponse _self;
  final $Res Function(_BuyTicketResponse) _then;

/// Create a copy of BuyTicketResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,Object? scheduleId = null,Object? seatId = null,Object? createdAt = null,Object? updatedAt = null,Object? qrCodeUrl = null,Object? qrCodePublicId = null,Object? schedule = null,Object? seat = null,}) {
  return _then(_BuyTicketResponse(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,scheduleId: null == scheduleId ? _self.scheduleId : scheduleId // ignore: cast_nullable_to_non_nullable
as int,seatId: null == seatId ? _self.seatId : seatId // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,qrCodeUrl: null == qrCodeUrl ? _self.qrCodeUrl : qrCodeUrl // ignore: cast_nullable_to_non_nullable
as String,qrCodePublicId: null == qrCodePublicId ? _self.qrCodePublicId : qrCodePublicId // ignore: cast_nullable_to_non_nullable
as String,schedule: null == schedule ? _self.schedule : schedule // ignore: cast_nullable_to_non_nullable
as Schedule,seat: null == seat ? _self.seat : seat // ignore: cast_nullable_to_non_nullable
as Seat,
  ));
}

/// Create a copy of BuyTicketResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ScheduleCopyWith<$Res> get schedule {
  
  return $ScheduleCopyWith<$Res>(_self.schedule, (value) {
    return _then(_self.copyWith(schedule: value));
  });
}/// Create a copy of BuyTicketResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SeatCopyWith<$Res> get seat {
  
  return $SeatCopyWith<$Res>(_self.seat, (value) {
    return _then(_self.copyWith(seat: value));
  });
}
}

// dart format on
