import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:socialice/domains/event_chat_repository/src/event_chat_viewmodel.dart';

final communityChatViewmodelProvider =
    Provider<EventChatViewmodel>((ref) => EventChatViewmodel(ref: ref));
