import 'package:socialice/domains/conversation_repository/src/models/conversation_model.dart';
import 'package:socialice/providers/conversations_provider/conversations_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final conversationsProvider = StateNotifierProvider<ConversationsNotifier,
    AsyncValue<List<ConversationModel>>>((ref) {
  return ConversationsNotifier(ref);
});
