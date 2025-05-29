// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_ticket_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Ticket {

 int get id; String get origin; String get destination; String get price; String get seatNumber; int get distance; String get travelTime; DateTime get departureTime; DateTime get arrivalTime; String get qrCodeUrl;
/// Create a copy of Ticket
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TicketCopyWith<Ticket> get copyWith => _$TicketCopyWithImpl<Ticket>(this as Ticket, _$identity);

  /// Serializes this Ticket to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Ticket&&(identical(other.id, id) || other.id == id)&&(identical(other.origin, origin) || other.origin == origin)&&(identical(other.destination, destination) || other.destination == destination)&&(identical(other.price, price) || other.price == price)&&(identical(other.seatNumber, seatNumber) || other.seatNumber == seatNumber)&&(identical(other.distance, distance) || other.distance == distance)&&(identical(other.travelTime, travelTime) || other.travelTime == travelTime)&&(identical(other.departureTime, departureTime) || other.departureTime == departureTime)&&(identical(other.arrivalTime, arrivalTime) || other.arrivalTime == arrivalTime)&&(identical(other.qrCodeUrl, qrCodeUrl) || other.qrCodeUrl == qrCodeUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,origin,destination,price,seatNumber,distance,travelTime,departureTime,arrivalTime,qrCodeUrl);

@override
String toString() {
  return 'Ticket(id: $id, origin: $origin, destination: $destination, price: $price, seatNumber: $seatNumber, distance: $distance, travelTime: $travelTime, departureTime: $departureTime, arrivalTime: $arrivalTime, qrCodeUrl: $qrCodeUrl)';
}


}

/// @nodoc
abstract mixin class $TicketCopyWith<$Res>  {
  factory $TicketCopyWith(Ticket value, $Res Function(Ticket) _then) = _$TicketCopyWithImpl;
@useResult
$Res call({
 int id, String origin, String destination, String price, String seatNumber, int distance, String travelTime, DateTime departureTime, DateTime arrivalTime, String qrCodeUrl
});




}
/// @nodoc
class _$TicketCopyWithImpl<$Res>
    implements $TicketCopyWith<$Res> {
  _$TicketCopyWithImpl(this._self, this._then);

  final Ticket _self;
  final $Res Function(Ticket) _then;

/// Create a copy of Ticket
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? origin = null,Object? destination = null,Object? price = null,Object? seatNumber = null,Object? distance = null,Object? travelTime = null,Object? departureTime = null,Object? arrivalTime = null,Object? qrCodeUrl = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,origin: null == origin ? _self.origin : origin // ignore: cast_nullable_to_non_nullable
as String,destination: null == destination ? _self.destination : destination // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String,seatNumber: null == seatNumber ? _self.seatNumber : seatNumber // ignore: cast_nullable_to_non_nullable
as String,distance: null == distance ? _self.distance : distance // ignore: cast_nullable_to_non_nullable
as int,travelTime: null == travelTime ? _self.travelTime : travelTime // ignore: cast_nullable_to_non_nullable
as String,departureTime: null == departureTime ? _self.departureTime : departureTime // ignore: cast_nullable_to_non_nullable
as DateTime,arrivalTime: null == arrivalTime ? _self.arrivalTime : arrivalTime // ignore: cast_nullable_to_non_nullable
as DateTime,qrCodeUrl: null == qrCodeUrl ? _self.qrCodeUrl : qrCodeUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Ticket implements Ticket {
  const _Ticket({required this.id, required this.origin, required this.destination, required this.price, required this.seatNumber, required this.distance, required this.travelTime, required this.departureTime, required this.arrivalTime, required this.qrCodeUrl});
  factory _Ticket.fromJson(Map<String, dynamic> json) => _$TicketFromJson(json);

@override final  int id;
@override final  String origin;
@override final  String destination;
@override final  String price;
@override final  String seatNumber;
@override final  int distance;
@override final  String travelTime;
@override final  DateTime departureTime;
@override final  DateTime arrivalTime;
@override final  String qrCodeUrl;

/// Create a copy of Ticket
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TicketCopyWith<_Ticket> get copyWith => __$TicketCopyWithImpl<_Ticket>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TicketToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Ticket&&(identical(other.id, id) || other.id == id)&&(identical(other.origin, origin) || other.origin == origin)&&(identical(other.destination, destination) || other.destination == destination)&&(identical(other.price, price) || other.price == price)&&(identical(other.seatNumber, seatNumber) || other.seatNumber == seatNumber)&&(identical(other.distance, distance) || other.distance == distance)&&(identical(other.travelTime, travelTime) || other.travelTime == travelTime)&&(identical(other.departureTime, departureTime) || other.departureTime == departureTime)&&(identical(other.arrivalTime, arrivalTime) || other.arrivalTime == arrivalTime)&&(identical(other.qrCodeUrl, qrCodeUrl) || other.qrCodeUrl == qrCodeUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,origin,destination,price,seatNumber,distance,travelTime,departureTime,arrivalTime,qrCodeUrl);

@override
String toString() {
  return 'Ticket(id: $id, origin: $origin, destination: $destination, price: $price, seatNumber: $seatNumber, distance: $distance, travelTime: $travelTime, departureTime: $departureTime, arrivalTime: $arrivalTime, qrCodeUrl: $qrCodeUrl)';
}


}

/// @nodoc
abstract mixin class _$TicketCopyWith<$Res> implements $TicketCopyWith<$Res> {
  factory _$TicketCopyWith(_Ticket value, $Res Function(_Ticket) _then) = __$TicketCopyWithImpl;
@override @useResult
$Res call({
 int id, String origin, String destination, String price, String seatNumber, int distance, String travelTime, DateTime departureTime, DateTime arrivalTime, String qrCodeUrl
});




}
/// @nodoc
class __$TicketCopyWithImpl<$Res>
    implements _$TicketCopyWith<$Res> {
  __$TicketCopyWithImpl(this._self, this._then);

  final _Ticket _self;
  final $Res Function(_Ticket) _then;

/// Create a copy of Ticket
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? origin = null,Object? destination = null,Object? price = null,Object? seatNumber = null,Object? distance = null,Object? travelTime = null,Object? departureTime = null,Object? arrivalTime = null,Object? qrCodeUrl = null,}) {
  return _then(_Ticket(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,origin: null == origin ? _self.origin : origin // ignore: cast_nullable_to_non_nullable
as String,destination: null == destination ? _self.destination : destination // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String,seatNumber: null == seatNumber ? _self.seatNumber : seatNumber // ignore: cast_nullable_to_non_nullable
as String,distance: null == distance ? _self.distance : distance // ignore: cast_nullable_to_non_nullable
as int,travelTime: null == travelTime ? _self.travelTime : travelTime // ignore: cast_nullable_to_non_nullable
as String,departureTime: null == departureTime ? _self.departureTime : departureTime // ignore: cast_nullable_to_non_nullable
as DateTime,arrivalTime: null == arrivalTime ? _self.arrivalTime : arrivalTime // ignore: cast_nullable_to_non_nullable
as DateTime,qrCodeUrl: null == qrCodeUrl ? _self.qrCodeUrl : qrCodeUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$MyTicketResponse {

 List<Ticket> get data;
/// Create a copy of MyTicketResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MyTicketResponseCopyWith<MyTicketResponse> get copyWith => _$MyTicketResponseCopyWithImpl<MyTicketResponse>(this as MyTicketResponse, _$identity);

  /// Serializes this MyTicketResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyTicketResponse&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'MyTicketResponse(data: $data)';
}


}

/// @nodoc
abstract mixin class $MyTicketResponseCopyWith<$Res>  {
  factory $MyTicketResponseCopyWith(MyTicketResponse value, $Res Function(MyTicketResponse) _then) = _$MyTicketResponseCopyWithImpl;
@useResult
$Res call({
 List<Ticket> data
});




}
/// @nodoc
class _$MyTicketResponseCopyWithImpl<$Res>
    implements $MyTicketResponseCopyWith<$Res> {
  _$MyTicketResponseCopyWithImpl(this._self, this._then);

  final MyTicketResponse _self;
  final $Res Function(MyTicketResponse) _then;

/// Create a copy of MyTicketResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<Ticket>,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _MyTicketResponse implements MyTicketResponse {
  const _MyTicketResponse({required final  List<Ticket> data}): _data = data;
  factory _MyTicketResponse.fromJson(Map<String, dynamic> json) => _$MyTicketResponseFromJson(json);

 final  List<Ticket> _data;
@override List<Ticket> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of MyTicketResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MyTicketResponseCopyWith<_MyTicketResponse> get copyWith => __$MyTicketResponseCopyWithImpl<_MyTicketResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MyTicketResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MyTicketResponse&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'MyTicketResponse(data: $data)';
}


}

/// @nodoc
abstract mixin class _$MyTicketResponseCopyWith<$Res> implements $MyTicketResponseCopyWith<$Res> {
  factory _$MyTicketResponseCopyWith(_MyTicketResponse value, $Res Function(_MyTicketResponse) _then) = __$MyTicketResponseCopyWithImpl;
@override @useResult
$Res call({
 List<Ticket> data
});




}
/// @nodoc
class __$MyTicketResponseCopyWithImpl<$Res>
    implements _$MyTicketResponseCopyWith<$Res> {
  __$MyTicketResponseCopyWithImpl(this._self, this._then);

  final _MyTicketResponse _self;
  final $Res Function(_MyTicketResponse) _then;

/// Create a copy of MyTicketResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(_MyTicketResponse(
data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<Ticket>,
  ));
}


}

// dart format on
