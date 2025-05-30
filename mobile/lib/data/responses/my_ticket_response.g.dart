// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_ticket_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Ticket _$TicketFromJson(Map<String, dynamic> json) => _Ticket(
  id: (json['id'] as num).toInt(),
  origin: json['origin'] as String,
  destination: json['destination'] as String,
  price: json['price'] as String,
  seatNumber: json['seat_number'] as String,
  distance: (json['distance'] as num).toInt(),
  travelTime: json['travel_time'] as String,
  departureTime: DateTime.parse(json['departure_time'] as String),
  arrivalTime: DateTime.parse(json['arrival_time'] as String),
  qrCodeUrl: json['qr_code_url'] as String,
);

Map<String, dynamic> _$TicketToJson(_Ticket instance) => <String, dynamic>{
  'id': instance.id,
  'origin': instance.origin,
  'destination': instance.destination,
  'price': instance.price,
  'seat_number': instance.seatNumber,
  'distance': instance.distance,
  'travel_time': instance.travelTime,
  'departure_time': instance.departureTime.toIso8601String(),
  'arrival_time': instance.arrivalTime.toIso8601String(),
  'qr_code_url': instance.qrCodeUrl,
};

_MyTicketResponse _$MyTicketResponseFromJson(Map<String, dynamic> json) =>
    _MyTicketResponse(
      data:
          (json['data'] as List<dynamic>)
              .map((e) => Ticket.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$MyTicketResponseToJson(_MyTicketResponse instance) =>
    <String, dynamic>{'data': instance.data};
