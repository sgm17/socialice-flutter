import 'package:socialice/domains/event_chat_repository/src/models/event_chat_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:socialice/domains/event_chat_repository/src/models/event_message_model.dart';
import 'package:socialice/providers/app_user_provider/app_user_provider.dart';
import 'package:socialice/providers/community_chat_provider/event_chat_viewmodel_provider.dart';

class EventChatNotifier
    extends StateNotifier<AsyncValue<List<EventChatModel>>> {
  final Ref ref;

  EventChatNotifier(
    this.ref,
  ) : super(const AsyncValue<List<EventChatModel>>.loading()) {
    initialize();
  }

  Future<void> initialize() async {
    try {
      final eventChats =
          await ref.read(communityChatViewmodelProvider).getEventChats();
      state = AsyncValue.data(eventChats);
    } catch (e) {
      print("xd");
      print(e);
      state = AsyncValue.error(e, StackTrace.current);
    }
  }

  void sendMessage({required String eventChatId, required String message}) {
    try {
      final user = ref.read(appUserProvider).asData!.value;
      final eventChats = state.asData!.value;
      final eventChat =
          eventChats.where((e) => e.id == eventChatId).firstOrNull;

      if (eventChat == null) return;

      final newMessage = EventMessageModel(
          id: "0",
          user: user,
          chat: eventChat,
          message: message,
          createdAt: DateTime.now());

      final updatedEventChat =
          eventChat.copyWith(messages: [...eventChat.messages!, newMessage]);

      state = AsyncValue.data(eventChats
          .map((e) => e.id == eventChatId ? updatedEventChat : e)
          .toList());
    } catch (e) {
      print(e);
      state = AsyncValue.error(e, StackTrace.current);
    }
  }
}
