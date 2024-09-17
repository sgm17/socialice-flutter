import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:socialice/domains/event_chat_repository/src/event_chat_repository.dart';
import 'package:socialice/domains/event_chat_repository/src/models/event_chat_model.dart';
import 'package:socialice/providers/http_provider/http_viewmodel_provider.dart';

class EventChatViewmodel implements EventChatRepository {
  final Ref ref;

  EventChatViewmodel({required this.ref});

  @override
  Future<List<EventChatModel>> getEventChats() async {
    return await ref.read(httpViewmodelProvider).requestEventChats();
  }
}
