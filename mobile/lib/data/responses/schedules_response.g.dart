// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedules_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Schedule _$ScheduleFromJson(Map<String, dynamic> json) => _Schedule(
  id: (json['id'] as num).toInt(),
  bus: json['bus'] as String,
  origin: json['origin'] as String,
  price: json['price'] as String,
  destination: json['destination'] as String,
  departureTime: DateTime.parse(json['departure_time'] as String),
  arrivalTime: DateTime.parse(json['arrival_time'] as String),
  totalSeats: (json['total_seats'] as num).toInt(),
  availableSeats: (json['available_seats'] as num).toInt(),
  createdAt: DateTime.parse(json['created_at'] as String),
  updatedAt: DateTime.parse(json['updated_at'] as String),
);

Map<String, dynamic> _$ScheduleToJson(_Schedule instance) => <String, dynamic>{
  'id': instance.id,
  'bus': instance.bus,
  'origin': instance.origin,
  'price': instance.price,
  'destination': instance.destination,
  'departure_time': instance.departureTime.toIso8601String(),
  'arrival_time': instance.arrivalTime.toIso8601String(),
  'total_seats': instance.totalSeats,
  'available_seats': instance.availableSeats,
  'created_at': instance.createdAt.toIso8601String(),
  'updated_at': instance.updatedAt.toIso8601String(),
};

_Link _$LinkFromJson(Map<String, dynamic> json) => _Link(
  url: json['url'] as String?,
  label: json['label'] as String,
  active: json['active'] as bool,
);

Map<String, dynamic> _$LinkToJson(_Link instance) => <String, dynamic>{
  'url': instance.url,
  'label': instance.label,
  'active': instance.active,
};

_Meta _$MetaFromJson(Map<String, dynamic> json) => _Meta(
  currentPage: (json['currentPage'] as num).toInt(),
  from: (json['from'] as num).toInt(),
  lastPage: (json['lastPage'] as num).toInt(),
  links:
      (json['links'] as List<dynamic>)
          .map((e) => Link.fromJson(e as Map<String, dynamic>))
          .toList(),
  path: json['path'] as String,
  perPage: (json['perPage'] as num).toInt(),
  to: (json['to'] as num).toInt(),
  total: (json['total'] as num).toInt(),
);

Map<String, dynamic> _$MetaToJson(_Meta instance) => <String, dynamic>{
  'currentPage': instance.currentPage,
  'from': instance.from,
  'lastPage': instance.lastPage,
  'links': instance.links,
  'path': instance.path,
  'perPage': instance.perPage,
  'to': instance.to,
  'total': instance.total,
};

_SchedulesResponse _$SchedulesResponseFromJson(Map<String, dynamic> json) =>
    _SchedulesResponse(
      data:
          (json['data'] as List<dynamic>)
              .map((e) => Schedule.fromJson(e as Map<String, dynamic>))
              .toList(),
      links: json['links'] as Map<String, dynamic>,
      meta: Meta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SchedulesResponseToJson(_SchedulesResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'links': instance.links,
      'meta': instance.meta,
    };
