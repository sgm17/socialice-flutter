import 'package:socialice/domains/event_chat_repository/src/models/event_chat_model.dart';
import 'package:socialice/providers/community_chat_provider/event_chat_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final eventChatProvider =
    StateNotifierProvider<EventChatNotifier, AsyncValue<List<EventChatModel>>>(
        (ref) => EventChatNotifier(ref));
