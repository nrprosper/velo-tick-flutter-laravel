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
  seatNumber: json['seatNumber'] as String,
  distance: (json['distance'] as num).toInt(),
  travelTime: json['travelTime'] as String,
  departureTime: DateTime.parse(json['departureTime'] as String),
  arrivalTime: DateTime.parse(json['arrivalTime'] as String),
  qrCodeUrl: json['qrCodeUrl'] as String,
);

Map<String, dynamic> _$TicketToJson(_Ticket instance) => <String, dynamic>{
  'id': instance.id,
  'origin': instance.origin,
  'destination': instance.destination,
  'price': instance.price,
  'seatNumber': instance.seatNumber,
  'distance': instance.distance,
  'travelTime': instance.travelTime,
  'departureTime': instance.departureTime.toIso8601String(),
  'arrivalTime': instance.arrivalTime.toIso8601String(),
  'qrCodeUrl': instance.qrCodeUrl,
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
