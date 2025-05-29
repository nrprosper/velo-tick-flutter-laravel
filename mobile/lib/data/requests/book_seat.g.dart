// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_seat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BookSeatRequest _$BookSeatRequestFromJson(Map<String, dynamic> json) =>
    _BookSeatRequest(
      scheduleId: (json['scheduleId'] as num).toInt(),
      seatId: (json['seatId'] as num).toInt(),
    );

Map<String, dynamic> _$BookSeatRequestToJson(_BookSeatRequest instance) =>
    <String, dynamic>{
      'scheduleId': instance.scheduleId,
      'seatId': instance.seatId,
    };
