import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_ticket.freezed.dart';
part 'verify_ticket.g.dart';

@freezed
abstract class VerifyTicketRequest with _$VerifyTicketRequest {
  const factory VerifyTicketRequest({
    required String encryptedTicket,
  }) = _VerifyTicketRequest;

  factory VerifyTicketRequest.fromJson(Map<String, dynamic> json) => _$VerifyTicketRequestFromJson(json);

}