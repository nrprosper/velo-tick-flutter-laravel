import 'package:freezed_annotation/freezed_annotation.dart';

part 'single_schedule_response.freezed.dart';
part 'single_schedule_response.g.dart';

@freezed
abstract class SeatAvailability with _$SeatAvailability {
  const factory SeatAvailability({
    required int seatId,
    required String seatNumber,
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
    required DateTime departureTime,
    required DateTime arrivalTime,
    required int totalSeats,
    required String price,
    required int availableSeats,
    required List<SeatAvailability> availabilities,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _SingleScheduleResponse;

  factory SingleScheduleResponse.fromJson(Map<String, dynamic> json) =>
      _$SingleScheduleResponseFromJson(json);
}