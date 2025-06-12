import 'package:freezed_annotation/freezed_annotation.dart';

part 'buy_ticket_response.freezed.dart';

part 'buy_ticket_response.g.dart';

@freezed
abstract class Route with _$Route {
  const factory Route({
    required int id,
    required String origin,
    required String destination,
    required String price,
    @JsonKey(name: 'distance_km')
    required int distanceKm,
    @JsonKey(name: 'travel_time')
    required String travelTime,
    @JsonKey(name: 'route_code')
    required String routeCode,
    @JsonKey(name: 'created_at')
    required DateTime createdAt,
    @JsonKey(name: 'updated_at')
    required DateTime updatedAt,
  }) = _Route;

  factory Route.fromJson(Map<String, dynamic> json) => _$RouteFromJson(json);
}

@freezed
abstract class Schedule with _$Schedule {
  const factory Schedule({
    required int id,
    @JsonKey(name: 'bus_id')
    required int busId,
    @JsonKey(name: 'route_id')
    required int routeId,
    @JsonKey(name: 'departure_time')
    required DateTime departureTime,
    @JsonKey(name: 'arrival_time')
    required DateTime arrivalTime,
    @JsonKey(name: 'created_at')
    required DateTime createdAt,
    @JsonKey(name: 'updated_at')
    required DateTime updatedAt,
    required Route route,
  }) = _Schedule;

  factory Schedule.fromJson(Map<String, dynamic> json) =>
      _$ScheduleFromJson(json);
}

@freezed
abstract class Seat with _$Seat {
  const factory Seat({
    required int id,
    @JsonKey(name: 'seat_number')
    required String seatNumber,
    @JsonKey(name: 'bus_id')
    required int busId,
    @JsonKey(name: 'created_at')
    required DateTime createdAt,
    @JsonKey(name: 'updated_at')
    required DateTime updatedAt,
  }) = _Seat;

  factory Seat.fromJson(Map<String, dynamic> json) => _$SeatFromJson(json);
}

@freezed
abstract class BuyTicketResponse with _$BuyTicketResponse {
  const factory BuyTicketResponse({
    required int id,
    @JsonKey(name: 'user_id')
    required int userId,
    @JsonKey(name: 'schedule_id')
    required int scheduleId,
    @JsonKey(name: 'seat_id')
    required int seatId,
    @JsonKey(name: 'created_at')
    required DateTime createdAt,
    @JsonKey(name: 'updated_at')
    required DateTime updatedAt,
    @JsonKey(name: 'qr_code_url')
    required String qrCodeUrl,
    @JsonKey(name: 'qr_code_public_id')
    required String qrCodePublicId,
    required Schedule schedule,
    required Seat seat,
  }) = _BuyTicketResponse;

  factory BuyTicketResponse.fromJson(Map<String, dynamic> json) =>
      _$BuyTicketResponseFromJson(json);
}
