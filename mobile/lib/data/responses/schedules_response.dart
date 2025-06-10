import 'package:freezed_annotation/freezed_annotation.dart';

part 'schedules_response.freezed.dart';
part 'schedules_response.g.dart';

@freezed
abstract class Schedule with _$Schedule {
  const factory Schedule({
    required int id,
    required String bus,
    required String origin,
    required String price,
    required String destination,
    @JsonKey(name: "departure_time")
    required DateTime departureTime,
    @JsonKey(name: "arrival_time")
    required DateTime arrivalTime,
    @JsonKey(name: "total_seats")
    required int totalSeats,
    @JsonKey(name: "available_seats")
    required int availableSeats,
    @JsonKey(name: "created_at")
    required DateTime createdAt,
    @JsonKey(name: "updated_at")
    required DateTime updatedAt,
  }) = _Schedule;

  factory Schedule.fromJson(Map<String, dynamic> json) =>
      _$ScheduleFromJson(json);
}

@freezed
abstract class Link with _$Link {
  const factory Link({
    String? url,
    required String label,
    required bool active,
  }) = _Link;

  factory Link.fromJson(Map<String, dynamic> json) => _$LinkFromJson(json);
}

@freezed
abstract class Meta with _$Meta {
  const factory Meta({
    @JsonKey(name: "current_page")
    required int currentPage,
    required int from,
    @JsonKey(name: "last_page")
    required int lastPage,
    required List<Link> links,
    required String path,
    @JsonKey(name: "per_page")
    required int perPage,
    required int to,
    required int total,
  }) = _Meta;

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);
}

@freezed
abstract class SchedulesResponse with _$SchedulesResponse {
  const factory SchedulesResponse({
    required List<Schedule> data,
    required Map<String, dynamic> links,
    required Meta meta,
  }) = _SchedulesResponse;

  factory SchedulesResponse.fromJson(Map<String, dynamic> json) =>
      _$SchedulesResponseFromJson(json);
}