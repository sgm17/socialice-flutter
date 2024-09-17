import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:socialice/providers/community_chat_provider/event_chat_provider.dart';
import 'package:socialice/screens/event_chat_screen/widgets/event_chat_conversation.dart';
import 'package:socialice/widgets/skelton.dart';

class EventChatScreen extends ConsumerWidget {
  const EventChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final eventChatState = ref.watch(eventChatProvider);

    return Scaffold(
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      eventChatState.when(
        data: (eventChats) {
          if (eventChats.isEmpty) {
            return GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, "/AllEventsScreen");
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 12.0),
                child: SizedBox(
                  height: 70,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 16,
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(width: 1)),
                        child: Icon(
                          Icons.event_outlined,
                          size: 20,
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
                            "Join an event to access the chat",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                              color: Color(0xFF000000),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          }

          return Expanded(
              child: ListView.separated(
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, "/EventChatDetailScreen",
                        arguments: {"eventChatId": eventChats[index].id});
                  },
                  child: EventChatConversation(eventChat: eventChats[index]));
            },
            separatorBuilder: (BuildContext context, int index) {
              return Container(
                  height: 1,
                  decoration: BoxDecoration(
                    color: Color(0xFF000000),
                  ));
            },
            itemCount: eventChats.length,
          ));
        },
        loading: () => Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              for (int i = 0; i < 5; i++)
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 2.0),
                  child: Skelton(
                      height: 71, borderRadius: 0, isProfileImage: false),
                )
            ],
          ),
        ),
        error: (error, stackTrace) => SizedBox.shrink(),
      ),
    ]));
  }
}
