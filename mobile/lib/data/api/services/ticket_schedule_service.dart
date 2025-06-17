import 'package:dio/dio.dart';
import 'package:intl/intl.dart';
import 'package:mobile/data/api/api_client.dart';
import 'package:mobile/data/responses/buy_ticket_response.dart';
import 'package:mobile/data/responses/my_ticket_response.dart';
import 'package:mobile/data/responses/schedules_response.dart';
import 'package:mobile/data/responses/single_schedule_response.dart';

class TicketScheduleService {
  final Dio _dio;
  TicketScheduleService({required ApiClient apiClient}) : _dio = apiClient.dio;

  Future<SchedulesResponse> getAllSchedules({
    String? origin,
    String? destination,
    DateTime? date,
    int perPage = 10,
  }) {
    final query = <String, dynamic>{ 'per_page': perPage };
    if (origin != null)      query['origin']      = origin;
    if (destination != null) query['destination'] = destination;
    if (date != null)        query['date']        = DateFormat('yyyy-MM-dd').format(date);

    return _dio
        .get('/schedules', queryParameters: query)
        .then((res) => SchedulesResponse.fromJson(res.data));
  }


  Future<MyTicketResponse> myTickets() {
    return _dio.get('/tickets/mytickets').then((res) {
      return MyTicketResponse.fromJson(res.data);
    });
  }


  Future<SingleScheduleResponse> getSchedule(int id) {
    return _dio.get('/schedules/$id').then((res) {
      var response = res.data;
      final wrapper = ScheduleResponseWrapper.fromJson(response);
      return wrapper.data;
    });
  }


  Future<BuyTicketResponse> buyTicket(int scheduleId, int seatId) async {
    final response = await _dio.post('/tickets/buy', data: {
      'schedule_id': scheduleId,
      'seat_id': seatId,
    });

    return BuyTicketResponse.fromJson(response.data);

  }

  Future<MyTicketResponse> verifyTicket(String encryptedTicket) async {
    final response = await _dio.post('/tickets/verify', data: {
      'encrypted_ticket': encryptedTicket,
    });

    return MyTicketResponse.fromJson(response.data);
  }

  Future<List<String>> getOrigins() async {
    final response = await _dio.get('/locations/origins');
    return List<String>.from(response.data);
  }

  Future<List<String>> getDestinations() async {
    final response = await _dio.get('/locations/destinations');
    return List<String>.from(response.data);
  }

}