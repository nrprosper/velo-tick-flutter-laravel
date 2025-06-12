import 'package:dio/dio.dart';
import 'package:mobile/data/api/api_client.dart';
import 'package:mobile/data/responses/buy_ticket_response.dart';
import 'package:mobile/data/responses/my_ticket_response.dart';
import 'package:mobile/data/responses/schedules_response.dart';
import 'package:mobile/data/responses/single_schedule_response.dart';

class TicketScheduleService {
  final Dio _dio;
  TicketScheduleService({required ApiClient apiClient}) : _dio = apiClient.dio;

  Future<SchedulesResponse> getAllSchedules() {
    return _dio.get('/schedules').then((res) {
      return SchedulesResponse.fromJson(res.data);
    });
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

}