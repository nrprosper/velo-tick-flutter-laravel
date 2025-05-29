import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_seat.freezed.dart';
part 'book_seat.g.dart';

@freezed
abstract class BookSeatRequest with _$BookSeatRequest {
  const factory BookSeatRequest({
    required int scheduleId,
    required int seatId,
  }) = _BookSeatRequest;

  factory BookSeatRequest.fromJson(Map<String, dynamic> json) =>
      _$BookSeatRequestFromJson(json);
}