import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:socialice/domains/event_repository/src/event_repository.dart';
import 'package:socialice/domains/event_repository/src/models/event_model.dart';
import 'package:socialice/providers/http_provider/http_viewmodel_provider.dart';

class EventViewmodel extends EventRepository {
  final Ref ref;

  EventViewmodel({required this.ref});

  @override
  Future<List<EventModel>> getEvents() async {
    return ref.read(httpViewmodelProvider).requestEventsModel();
  }
}
