import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:socialice/domains/event_repository/src/models/event_model.dart';
import 'package:socialice/providers/event_provider/event_viewmodel_provider.dart';

class EventsNotifier extends StateNotifier<AsyncValue<List<EventModel>>> {
  final Ref ref;

  EventsNotifier(
    this.ref,
  ) : super(const AsyncValue<List<EventModel>>.loading()) {
    initialize();
  }

  Future<void> initialize() async {
    try {
      final events = await ref.read(eventViewmodelProvider).getEvents();
      state = AsyncValue.data(events);
    } catch (e) {
      state = AsyncValue.error(e, StackTrace.current);
    }
  }

  Future<void> handleReportEvent(int eventId) async {
    try {} catch (e) {
      state = AsyncValue.error(e, StackTrace.current);
    }
  }
}
