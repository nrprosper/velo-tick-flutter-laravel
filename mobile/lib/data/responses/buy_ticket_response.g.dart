// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'buy_ticket_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Route _$RouteFromJson(Map<String, dynamic> json) => _Route(
  id: (json['id'] as num).toInt(),
  origin: json['origin'] as String,
  destination: json['destination'] as String,
  price: json['price'] as String,
  distanceKm: (json['distance_km'] as num).toInt(),
  travelTime: json['travel_time'] as String,
  routeCode: json['route_code'] as String,
  createdAt: DateTime.parse(json['created_at'] as String),
  updatedAt: DateTime.parse(json['updated_at'] as String),
);

Map<String, dynamic> _$RouteToJson(_Route instance) => <String, dynamic>{
  'id': instance.id,
  'origin': instance.origin,
  'destination': instance.destination,
  'price': instance.price,
  'distance_km': instance.distanceKm,
  'travel_time': instance.travelTime,
  'route_code': instance.routeCode,
  'created_at': instance.createdAt.toIso8601String(),
  'updated_at': instance.updatedAt.toIso8601String(),
};

_Schedule _$ScheduleFromJson(Map<String, dynamic> json) => _Schedule(
  id: (json['id'] as num).toInt(),
  busId: (json['bus_id'] as num).toInt(),
  routeId: (json['route_id'] as num).toInt(),
  departureTime: DateTime.parse(json['departure_time'] as String),
  arrivalTime: DateTime.parse(json['arrival_time'] as String),
  createdAt: DateTime.parse(json['created_at'] as String),
  updatedAt: DateTime.parse(json['updated_at'] as String),
  route: Route.fromJson(json['route'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ScheduleToJson(_Schedule instance) => <String, dynamic>{
  'id': instance.id,
  'bus_id': instance.busId,
  'route_id': instance.routeId,
  'departure_time': instance.departureTime.toIso8601String(),
  'arrival_time': instance.arrivalTime.toIso8601String(),
  'created_at': instance.createdAt.toIso8601String(),
  'updated_at': instance.updatedAt.toIso8601String(),
  'route': instance.route,
};

_Seat _$SeatFromJson(Map<String, dynamic> json) => _Seat(
  id: (json['id'] as num).toInt(),
  seatNumber: json['seat_number'] as String,
  busId: (json['bus_id'] as num).toInt(),
  createdAt: DateTime.parse(json['created_at'] as String),
  updatedAt: DateTime.parse(json['updated_at'] as String),
);

Map<String, dynamic> _$SeatToJson(_Seat instance) => <String, dynamic>{
  'id': instance.id,
  'seat_number': instance.seatNumber,
  'bus_id': instance.busId,
  'created_at': instance.createdAt.toIso8601String(),
  'updated_at': instance.updatedAt.toIso8601String(),
};

_BuyTicketResponse _$BuyTicketResponseFromJson(Map<String, dynamic> json) =>
    _BuyTicketResponse(
      id: (json['id'] as num).toInt(),
      userId: (json['user_id'] as num).toInt(),
      scheduleId: (json['schedule_id'] as num).toInt(),
      seatId: (json['seat_id'] as num).toInt(),
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      qrCodeUrl: json['qr_code_url'] as String,
      qrCodePublicId: json['qr_code_public_id'] as String,
      schedule: Schedule.fromJson(json['schedule'] as Map<String, dynamic>),
      seat: Seat.fromJson(json['seat'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BuyTicketResponseToJson(_BuyTicketResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'schedule_id': instance.scheduleId,
      'seat_id': instance.seatId,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'qr_code_url': instance.qrCodeUrl,
      'qr_code_public_id': instance.qrCodePublicId,
      'schedule': instance.schedule,
      'seat': instance.seat,
    };
