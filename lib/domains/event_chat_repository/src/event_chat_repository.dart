import 'package:socialice/domains/event_chat_repository/src/models/event_chat_model.dart';

abstract class EventChatRepository {
  Future<List<EventChatModel>> getEventChats();
}
