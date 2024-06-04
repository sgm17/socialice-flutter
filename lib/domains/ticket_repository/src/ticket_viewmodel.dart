import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:socialice/domains/ticket_repository/src/models/ticket_model.dart';
import 'package:socialice/domains/ticket_repository/src/ticket_repository.dart';
import 'package:socialice/providers/http_provider/http_viewmodel_provider.dart';

class TicketViewmodel implements TicketRepository {
  final Ref ref;

  TicketViewmodel({required this.ref});

  @override
  Future<List<TicketModel>> getTickets() async {
    return await ref.read(httpViewmodelProvider).requestTickets();
  }
}
