import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:socialice/domains/event_chat_repository/src/models/event_chat_model.dart';
import 'package:socialice/providers/event_provider/events_provider.dart';
import 'package:socialice/utils/date_parser.dart';

class EventChatConversation extends ConsumerWidget {
  const EventChatConversation({
    super.key,
    required this.eventChat,
  });

  final EventChatModel eventChat;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final events = ref.watch(eventsProvider).asData!.value;
    final event = events.where((e) => e.id == eventChat.eventId).firstOrNull;

    if (event == null) {
      return SizedBox.shrink();
    }

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16),
      child: SizedBox(
        height: 70,
        child: Row(
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    event.image,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 12,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  event.name,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                    color: Color(0xFF000000),
                  ),
                ),
                if (eventChat.messages!.isNotEmpty)
                  Text(
                    eventChat.messages!.last.message,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                      color: Color(0xFFC1C1CB),
                    ),
                  ),
                if (eventChat.messages!.isNotEmpty)
                  Text(
                    formatTimestamp(eventChat.messages!.last.createdAt),
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Color(0xFFC1C1CB),
                    ),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
