import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:socialice/domains/ticket_repository/src/models/ticket_model.dart';
import 'package:socialice/providers/tickets_provider/tickets_viewmodel_provider.dart';

class TicketsNotifier extends StateNotifier<AsyncValue<List<TicketModel>>> {
  final Ref ref;

  TicketsNotifier(
    this.ref,
  ) : super(const AsyncValue<List<TicketModel>>.loading()) {
    initialize();
  }

  Future<void> initialize() async {
    try {
      final tickets = await ref.read(ticketsViewmodelProvider).getTickets();
      state = AsyncValue.data(tickets);
    } catch (e) {
      print(e);
      state = AsyncValue.error(e, StackTrace.current);
    }
  }
}
