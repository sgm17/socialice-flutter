import 'package:socialice/screens/event_chat_detail_screen/widgets/event_chat_detail_bottom_bar.dart';
import 'package:socialice/screens/event_chat_detail_screen/widgets/event_chat_detail_received_message.dart';
import 'package:socialice/screens/event_chat_detail_screen/widgets/event_chat_detail_sent_message.dart';
import 'package:socialice/screens/event_chat_detail_screen/widgets/event_chat_detail_timestamp.dart';
import 'package:socialice/providers/community_chat_provider/event_chat_provider.dart';
import 'package:socialice/providers/app_user_provider/app_user_provider.dart';
import 'package:socialice/providers/event_provider/events_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:socialice/widgets/arrow_back.dart';
import 'package:flutter/material.dart';

class EventChatDetailScreen extends ConsumerWidget {
  const EventChatDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Map<String, dynamic> args =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    final eventChatId = args["eventChatId"];

    final user = ref.watch(appUserProvider).asData!.value;
    final events = ref.watch(eventsProvider).asData!.value;
    final eventChats = ref.watch(eventChatProvider).asData!.value;
    final eventChat = eventChats.where((e) => e.id == eventChatId).firstOrNull;
    final event = events.where((e) => e.id == eventChat?.eventId).firstOrNull;

    if (eventChat == null || event == null) return SizedBox.shrink();

    final messages = eventChat.messages!.reversed.toList();

    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 32,
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ArrowBack(),
                      SizedBox(
                        width: 35,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, "/EventScreen",
                              arguments: {"eventId": eventChat.eventId});
                        },
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                    event.image,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              event.name,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 18,
                                color: Color(0xFF000000),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView.separated(
              padding: EdgeInsets.fromLTRB(16, 32, 16, 32),
              reverse: true,
              itemCount: messages.length,
              itemBuilder: (context, index) {
                final children = <Widget>[];

                if (index == messages.length - 1 ||
                    messages[index].createdAt.day !=
                        messages[index + 1].createdAt.day) {
                  children.add(EventChatDetailTimestamp(
                    createdAt: messages[index].createdAt,
                  ));
                  children.add(const SizedBox(height: 8.0));
                }

                children.add(messages[index].user.id == user.id
                    ? EventChatDetailSentMessage(
                        message: messages[index].message)
                    : EventChatDetailReceivedMessage(
                        otherUser: messages[index].user,
                        message: messages[index].message));

                return Column(
                  crossAxisAlignment: messages[index].user.id == user.id
                      ? CrossAxisAlignment.end
                      : CrossAxisAlignment.start,
                  children: children,
                );
              },
              separatorBuilder: (context, index) {
                final currentUserId = messages[index].user.id;
                final nextUserId = index < messages.length - 1
                    ? messages[index + 1].user.id
                    : null;
                final isSameUser = currentUserId == nextUserId;

                return SizedBox(
                  height: isSameUser ? 8.0 : 16.0,
                );
              },
            ),
          ),
          EventChatDetailBottomBar(
            eventChatId: eventChatId,
          ),
        ],
      ),
    );
  }
}
