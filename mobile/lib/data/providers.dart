import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobile/data/api/api_client.dart';
import 'package:mobile/data/api/services/auth_service.dart';
import 'package:mobile/data/api/services/ticket_schedule_service.dart';
import 'package:mobile/data/requests/login_request.dart';
import 'package:mobile/data/requests/sign_up_request.dart';
import 'package:mobile/data/responses/login_response.dart';
import 'package:mobile/data/responses/my_ticket_response.dart';
import 'package:mobile/data/responses/schedules_response.dart';
import 'package:mobile/data/responses/signup_response.dart';
import 'package:mobile/data/responses/single_schedule_response.dart';
import 'package:mobile/data/state/state.dart';

final apiClientProvider = Provider<ApiClient>((ref) => ApiClient());

/// Provides AuthService, injecting ApiClient.
final authServiceProvider = Provider<AuthService>((ref) {
  final apiClient = ref.watch(apiClientProvider);
  return AuthService(apiClient: apiClient);
});

/// Provides TicketScheduleService, injecting ApiClient.
final ticketScheduleServiceProvider = Provider<TicketScheduleService>((ref) {
  final apiClient = ref.watch(apiClientProvider);
  return TicketScheduleService(apiClient: apiClient);
});

// Auth Notifiers

/// Manages the state of the sign-up operation.
class SignUpNotifier extends StateNotifier<State<SignupResponse>> {
  final AuthService _authService;

  SignUpNotifier(this._authService) : super(const State.init());

  Future<void> signUp(SignUpRequest request) async {
    state = const State.loading();
    try {
      final response = await _authService.signUp(request);
      state = State.success(response);
    } catch (e) {
      state = State.error(e as Exception);
    }
  }
}

/// Provides the SignUpNotifier.
final signUpNotifierProvider =
StateNotifierProvider<SignUpNotifier, State<SignupResponse>>((ref) {
  final authService = ref.watch(authServiceProvider);
  return SignUpNotifier(authService);
});

/// Manages the state of the login operation.
class LoginNotifier extends StateNotifier<State<LoginResponse>> {
  final AuthService _authService;

  LoginNotifier(this._authService) : super(const State.init());

  Future<void> login(LoginRequest request) async {
    state = const State.loading();
    try {
      final response = await _authService.login(request);
      state = State.success(response);
    } catch (e) {
      state = State.error(e as Exception);
    }
  }
}

/// Provides the LoginNotifier.
final loginNotifierProvider =
StateNotifierProvider<LoginNotifier, State<LoginResponse>>((ref) {
  final authService = ref.watch(authServiceProvider);
  return LoginNotifier(authService);
});

// Ticket and Schedule Notifiers

/// Manages the state of fetching all schedules.
class SchedulesNotifier extends StateNotifier<State<SchedulesResponse>> {
  final TicketScheduleService _service;

  SchedulesNotifier(this._service) : super(const State.init());

  Future<void> fetchSchedules() async {
    state = const State.loading();
    try {
      final response = await _service.getAllSchedules();
      state = State.success(response);
    } catch (e) {
      state = State.error(e as Exception);
    }
  }
}

/// Provides the SchedulesNotifier.
final schedulesNotifierProvider =
StateNotifierProvider<SchedulesNotifier, State<SchedulesResponse>>((ref) {
  final service = ref.watch(ticketScheduleServiceProvider);
  return SchedulesNotifier(service);
});

/// Manages the state of fetching the user's tickets.
class MyTicketsNotifier extends StateNotifier<State<MyTicketResponse>> {
  final TicketScheduleService _service;

  MyTicketsNotifier(this._service) : super(const State.init());

  Future<void> fetchMyTickets() async {
    state = const State.loading();
    try {
      final response = await _service.myTickets();
      state = State.success(response);
    } catch (e) {
      state = State.error(e as Exception);
    }
  }
}

/// Provides the MyTicketsNotifier.
final myTicketsNotifierProvider =
StateNotifierProvider<MyTicketsNotifier, State<MyTicketResponse>>((ref) {
  final service = ref.watch(ticketScheduleServiceProvider);
  return MyTicketsNotifier(service);
});

/// Manages the state of fetching a single schedule's details.
class ScheduleDetailNotifier
    extends StateNotifier<State<SingleScheduleResponse>> {
  final TicketScheduleService _service;
  final int _id;

  ScheduleDetailNotifier(this._service, this._id) : super(const State.init()) {
    fetchSchedule();
  }

  Future<void> fetchSchedule() async {
    state = const State.loading();
    try {
      final response = await _service.getSchedule(_id);
      state = State.success(response);
    } catch (e) {
      state = State.error(e as Exception);
    }
  }
}

/// Provides the ScheduleDetailNotifier as a family provider with autoDispose.
final scheduleDetailNotifierProvider = StateNotifierProvider.autoDispose.family<
    ScheduleDetailNotifier,
    State<SingleScheduleResponse>,
    int>((ref, id) {
  final service = ref.watch(ticketScheduleServiceProvider);
  return ScheduleDetailNotifier(service, id);
});