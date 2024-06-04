import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:socialice/domains/ticket_repository/src/ticket_viewmodel.dart';

final ticketsViewmodelProvider =
    Provider<TicketViewmodel>((ref) => TicketViewmodel(ref: ref));
