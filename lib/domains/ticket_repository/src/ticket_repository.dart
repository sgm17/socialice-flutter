import 'package:socialice/domains/ticket_repository/src/models/ticket_model.dart';

abstract class TicketRepository {
  Future<List<TicketModel>> getTickets();
}
