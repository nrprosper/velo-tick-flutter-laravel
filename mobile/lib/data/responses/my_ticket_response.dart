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
    @JsonKey(name: "seat_number")
    required String seatNumber,
    required int distance,
    @JsonKey(name: "travel_time")
    required String travelTime,
    @JsonKey(name: "departure_time")
    required DateTime departureTime,
    @JsonKey(name: "arrival_time")
    required DateTime arrivalTime,
    @JsonKey(name: "qr_code_url")
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