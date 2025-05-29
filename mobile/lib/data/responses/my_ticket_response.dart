import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_ticket_response.freezed.dart';
part 'my_ticket_response.g.dart';

@freezed
abstract class Ticket with _$Ticket {
  const factory Ticket({
    required int id,
    required String origin,
    required String destination,
    required String price,
    required String seatNumber,
    required int distance,
    required String travelTime,
    required DateTime departureTime,
    required DateTime arrivalTime,
    required String qrCodeUrl,
  }) = _Ticket;

  factory Ticket.fromJson(Map<String, dynamic> json) => _$TicketFromJson(json);
}

@freezed
abstract class MyTicketResponse with _$MyTicketResponse {
  const factory MyTicketResponse({
    required List<Ticket> data,
  }) = _MyTicketResponse;

  factory MyTicketResponse.fromJson(Map<String, dynamic> json) =>
      _$MyTicketResponseFromJson(json);
}