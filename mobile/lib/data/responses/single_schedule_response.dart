import 'package:freezed_annotation/freezed_annotation.dart';

part 'single_schedule_response.freezed.dart';
part 'single_schedule_response.g.dart';

@freezed
abstract class SeatAvailability with _$SeatAvailability {
  const factory SeatAvailability({
    @JsonKey(name: "seat_id")
    required int seatId,
    @JsonKey(name: "seat_number")
    required String seatNumber,
    @JsonKey(name: "is_booked")
    required bool isBooked,
  }) = _SeatAvailability;

  factory SeatAvailability.fromJson(Map<String, dynamic> json) =>
      _$SeatAvailabilityFromJson(json);
}

@freezed
abstract class SingleScheduleResponse with _$SingleScheduleResponse {
  const factory SingleScheduleResponse({
    required int id,
    required String bus,
    required String origin,
    required String destination,
    @JsonKey(name: "departure_time")
    required DateTime departureTime,
    @JsonKey(name: "arrival_time")
    required DateTime arrivalTime,
    @JsonKey(name: "total_seats")
    required int totalSeats,
    required String price,
    @JsonKey(name: "available_seats")
    required int availableSeats,
    required List<SeatAvailability> availabilities,
    @JsonKey(name: "created_at")
    required DateTime createdAt,
    @JsonKey(name: "updated_at")
    required DateTime updatedAt,
  }) = _SingleScheduleResponse;

  factory SingleScheduleResponse.fromJson(Map<String, dynamic> json) =>
      _$SingleScheduleResponseFromJson(json);
}