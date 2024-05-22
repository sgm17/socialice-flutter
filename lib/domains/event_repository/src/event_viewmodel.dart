import 'package:socialice/domains/event_repository/src/event_repository.dart';
import 'package:socialice/domains/event_repository/src/models/event_model.dart';
import 'package:socialice/models.dart';

class EventViewmodel extends EventRepository {
  @override
  Future<List<EventModel>> getEvents() async {
    return Future.delayed(Duration(seconds: 3), () => [eventCreatedByLaura]);
  }
}
