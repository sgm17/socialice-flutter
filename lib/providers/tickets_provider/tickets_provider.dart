import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:socialice/domains/ticket_repository/src/models/ticket_model.dart';
import 'package:socialice/providers/tickets_provider/tickets_notifier.dart';

final ticketsProvider =
    StateNotifierProvider<TicketsNotifier, AsyncValue<List<TicketModel>>>(
        (ref) {
  return TicketsNotifier(ref);
});
