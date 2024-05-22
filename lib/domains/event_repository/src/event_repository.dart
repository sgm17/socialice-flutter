import 'package:socialice/domains/event_repository/src/models/event_model.dart';

abstract class EventRepository {
  Future<List<EventModel>> getEvents();
}
