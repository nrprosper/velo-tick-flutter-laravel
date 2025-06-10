// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'single_schedule_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SeatAvailability _$SeatAvailabilityFromJson(Map<String, dynamic> json) =>
    _SeatAvailability(
      seatId: (json['seat_id'] as num).toInt(),
      seatNumber: json['seat_number'] as String,
      isBooked: json['is_booked'] as bool,
    );

Map<String, dynamic> _$SeatAvailabilityToJson(_SeatAvailability instance) =>
    <String, dynamic>{
      'seat_id': instance.seatId,
      'seat_number': instance.seatNumber,
      'is_booked': instance.isBooked,
    };

_SingleScheduleResponse _$SingleScheduleResponseFromJson(
  Map<String, dynamic> json,
) => _SingleScheduleResponse(
  id: (json['id'] as num).toInt(),
  bus: json['bus'] as String,
  origin: json['origin'] as String,
  destination: json['destination'] as String,
  departureTime: DateTime.parse(json['departure_time'] as String),
  arrivalTime: DateTime.parse(json['arrival_time'] as String),
  totalSeats: (json['total_seats'] as num).toInt(),
  price: json['price'] as String,
  availableSeats: (json['available_seats'] as num).toInt(),
  availabilities:
      (json['availabilities'] as List<dynamic>)
          .map((e) => SeatAvailability.fromJson(e as Map<String, dynamic>))
          .toList(),
  createdAt: DateTime.parse(json['created_at'] as String),
  updatedAt: DateTime.parse(json['updated_at'] as String),
);

Map<String, dynamic> _$SingleScheduleResponseToJson(
  _SingleScheduleResponse instance,
) => <String, dynamic>{
  'id': instance.id,
  'bus': instance.bus,
  'origin': instance.origin,
  'destination': instance.destination,
  'departure_time': instance.departureTime.toIso8601String(),
  'arrival_time': instance.arrivalTime.toIso8601String(),
  'total_seats': instance.totalSeats,
  'price': instance.price,
  'available_seats': instance.availableSeats,
  'availabilities': instance.availabilities,
  'created_at': instance.createdAt.toIso8601String(),
  'updated_at': instance.updatedAt.toIso8601String(),
};

_ScheduleResponseWrapper _$ScheduleResponseWrapperFromJson(
  Map<String, dynamic> json,
) => _ScheduleResponseWrapper(
  data: SingleScheduleResponse.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ScheduleResponseWrapperToJson(
  _ScheduleResponseWrapper instance,
) => <String, dynamic>{'data': instance.data};
