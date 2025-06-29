import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobile/data/api/api_client.dart';
import 'package:mobile/data/api/services/auth_service.dart';
import 'package:mobile/data/api/services/ticket_schedule_service.dart';
import 'package:mobile/data/requests/login_request.dart';
import 'package:mobile/data/requests/sign_up_request.dart';
import 'package:mobile/data/responses/buy_ticket_response.dart';
import 'package:mobile/data/responses/login_response.dart';
import 'package:mobile/data/responses/my_ticket_response.dart';
import 'package:mobile/data/responses/profile.dart';
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
      state = State.error(Exception(e.toString()));
    }
  }
}

/// Provides the LoginNotifier.
final loginNotifierProvider =
StateNotifierProvider<LoginNotifier, State<LoginResponse>>((ref) {
  final authService = ref.watch(authServiceProvider);
  return LoginNotifier(authService);
});

class ProfileNotifier extends StateNotifier<State<ProfileResponse>> {
  final AuthService _authService;

  ProfileNotifier(this._authService) : super(const State.init()) {
    fetchProfile();
  }

  Future<void> fetchProfile() async {
    state = const State.loading();
    try {
      final response = await _authService.me();
      state = State.success(response);
    } catch (e) {
      state = State.error(Exception(e.toString()));
    }
  }
}

/// Provides the ProfileNotifier.
final profileNotifierProvider =
StateNotifierProvider<ProfileNotifier, State<ProfileResponse>>((ref) {
  final authService = ref.watch(authServiceProvider);
  return ProfileNotifier(authService);
});


class LogoutNotifier extends StateNotifier<State<Object?>> {
  final AuthService _authService;

  LogoutNotifier(this._authService) : super(const State.init());

  Future<void> logout() async {
    state = const State.loading();
    try {
      await _authService.logout();
      state = const State.success(null);
    } catch (e) {
      state = State.error(e as Exception);
    }
  }
}

final logoutNotifierProvider =
StateNotifierProvider<LogoutNotifier, State<Object?>>((ref) {
  final authService = ref.watch(authServiceProvider);
  return LogoutNotifier(authService);
});


// Ticket and Schedule Notifiers

/// Manages the state of fetching all schedules.
class SchedulesNotifier extends StateNotifier<State<SchedulesResponse>> {
  final TicketScheduleService _service;

  SchedulesNotifier(this._service) : super(const State.init());

  Future<void> fetchSchedules({
    String? origin,
    String? destination,
    DateTime? date,
  }) async {
    state = const State.loading();
    try {
      final response = await _service.getAllSchedules(
        origin: origin,
        destination: destination,
        date: date,
      );
      state = State.success(response);
    } catch (e) {
      state = State.error(Exception(e.toString()));
    }
  }
}

/// Provides the SchedulesNotifier.
final schedulesNotifierProvider = StateNotifierProvider.autoDispose<SchedulesNotifier, State<SchedulesResponse>>((ref) {
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
      state = State.error(Exception(e.toString()));
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
      state = State.error(Exception(e.toString()));
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



class BuyTicketNotifier extends StateNotifier<State<BuyTicketResponse>> {
  final TicketScheduleService _service;
  BuyTicketNotifier(this._service) : super(const State.init());

  Future<void> buyTicket(int scheduleId, int seatId) async {
    state = const State.loading();
    try {
      final ticket = await _service.buyTicket(scheduleId, seatId);
      state = State.success(ticket);
    } catch (e) {
      state = State.error(Exception(e.toString()));
    }
  }
}

final buyTicketNotifierProvider = StateNotifierProvider.autoDispose<BuyTicketNotifier, State<BuyTicketResponse>>((ref) {
  final service = ref.watch(ticketScheduleServiceProvider);
  return BuyTicketNotifier(service);
});


class VerifyTicketNotifier extends StateNotifier<State<MyTicketResponse>> {
  final TicketScheduleService _service;
  VerifyTicketNotifier(this._service) : super(const State.init());
  Future<void> verifyTicket(String encryptedTicket) async {
    state = const State.loading();
    try {
      final ticket = await _service.verifyTicket(encryptedTicket);
      state = State.success(ticket);
    } catch (e) {
      state = State.error(Exception(e.toString()));
    }
  }
}

final verifyTicketNotifierProvider = StateNotifierProvider.autoDispose<VerifyTicketNotifier, State<MyTicketResponse>>((ref) {
  final service = ref.watch(ticketScheduleServiceProvider);
  return VerifyTicketNotifier(service);
});

class OriginsNotifier extends StateNotifier<State<List<String>>> {
  final TicketScheduleService _service;

  OriginsNotifier(this._service) : super(const State.init()) {
    fetchOrigins();
  }

  Future<void> fetchOrigins() async {
    state = const State.loading();
    try {
      final origins = await _service.getOrigins();
      state = State.success(origins);
    } catch (e) {
      state = State.error(Exception(e.toString()));
    }
  }

}

final originsNotifierProvider = StateNotifierProvider<OriginsNotifier, State<List<String>>>((ref) {
  final service = ref.watch(ticketScheduleServiceProvider);
  return OriginsNotifier(service);
});

class DestinationsNotifier extends StateNotifier<State<List<String>>> {
  final TicketScheduleService _service;

  DestinationsNotifier(this._service) : super(const State.init()) {
    fetchDestinations();
  }

  Future<void> fetchDestinations() async {
    state = const State.loading();
    try {
      final destinations = await _service.getDestinations();
      state = State.success(destinations);
    } catch (e) {
      state = State.error(Exception(e.toString()));
    }
  }
}

final destinationsNotifierProvider = StateNotifierProvider<DestinationsNotifier, State<List<String>>>((ref) {
  final service = ref.watch(ticketScheduleServiceProvider);
  return DestinationsNotifier(service);
});
