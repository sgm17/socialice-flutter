import 'package:socialice/domains/conversation_repository/src/models/message_model.dart';
import 'package:socialice/providers/app_user_provider/app_user_provider.dart';
import 'package:socialice/providers/conversations_provider/conversations_viewmodel_provider.dart';
import 'package:socialice/domains/conversation_repository/src/models/conversation_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ConversationsNotifier
    extends StateNotifier<AsyncValue<List<ConversationModel>>> {
  final Ref ref;

  ConversationsNotifier(
    this.ref,
  ) : super(const AsyncValue<List<ConversationModel>>.loading()) {
    initialize();
  }

  Future<void> initialize() async {
    try {
      final conversations =
          await ref.read(conversationsViewmodelProvider).getConversations();
      state = AsyncValue.data(conversations);
    } catch (e) {
      print(e);
      state = AsyncValue.error(e, StackTrace.current);
    }
  }

  void sendMessage({required String conversationId, required String message}) {
    try {
      final user = ref.read(appUserProvider).asData!.value;
      final conversations = state.asData!.value;
      final conversation =
          conversations.where((e) => e.id == conversationId).firstOrNull;

      if (conversation == null) return;

      final otherUser = conversation.userA != user.id
          ? conversation.userB
          : conversation.userA;

      final newMessage = MessageModel(
          id: "0",
          sender: user,
          receiver: otherUser,
          conversationId: conversationId,
          message: message,
          createdAt: DateTime.now());

      final updatedConversation = conversation
          .copyWith(messages: [...conversation.messages!, newMessage]);

      state = AsyncValue.data(conversations
          .map((e) => e.id == conversationId ? updatedConversation : e)
          .toList());
    } catch (e) {
      print(e);
      state = AsyncValue.error(e, StackTrace.current);
    }
  }
}
