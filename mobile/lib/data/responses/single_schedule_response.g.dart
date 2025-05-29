// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'single_schedule_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SeatAvailability _$SeatAvailabilityFromJson(Map<String, dynamic> json) =>
    _SeatAvailability(
      seatId: (json['seatId'] as num).toInt(),
      seatNumber: json['seatNumber'] as String,
      isBooked: json['isBooked'] as bool,
    );

Map<String, dynamic> _$SeatAvailabilityToJson(_SeatAvailability instance) =>
    <String, dynamic>{
      'seatId': instance.seatId,
      'seatNumber': instance.seatNumber,
      'isBooked': instance.isBooked,
    };

_SingleScheduleResponse _$SingleScheduleResponseFromJson(
  Map<String, dynamic> json,
) => _SingleScheduleResponse(
  id: (json['id'] as num).toInt(),
  bus: json['bus'] as String,
  origin: json['origin'] as String,
  destination: json['destination'] as String,
  departureTime: DateTime.parse(json['departureTime'] as String),
  arrivalTime: DateTime.parse(json['arrivalTime'] as String),
  totalSeats: (json['totalSeats'] as num).toInt(),
  price: json['price'] as String,
  availableSeats: (json['availableSeats'] as num).toInt(),
  availabilities:
      (json['availabilities'] as List<dynamic>)
          .map((e) => SeatAvailability.fromJson(e as Map<String, dynamic>))
          .toList(),
  createdAt: DateTime.parse(json['createdAt'] as String),
  updatedAt: DateTime.parse(json['updatedAt'] as String),
);

Map<String, dynamic> _$SingleScheduleResponseToJson(
  _SingleScheduleResponse instance,
) => <String, dynamic>{
  'id': instance.id,
  'bus': instance.bus,
  'origin': instance.origin,
  'destination': instance.destination,
  'departureTime': instance.departureTime.toIso8601String(),
  'arrivalTime': instance.arrivalTime.toIso8601String(),
  'totalSeats': instance.totalSeats,
  'price': instance.price,
  'availableSeats': instance.availableSeats,
  'availabilities': instance.availabilities,
  'createdAt': instance.createdAt.toIso8601String(),
  'updatedAt': instance.updatedAt.toIso8601String(),
};
