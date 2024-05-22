import 'package:flutter/material.dart';
import 'package:socialice/screens/event_chat_screen/widgets/event_chat_conversation.dart';

class EventChatScreen extends StatelessWidget {
  const EventChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Expanded(
          child: ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
              onTap: () => print("Event chat tap"),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 12.0),
                child: EventChatConversation(
                    groupImage: 'assets/images/event_chat_image_3.png',
                    groupName: 'Learn German Online in Deu...',
                    timestamp: "Hace 6 minutos",
                    message: "xdd"),
              ));
        },
        separatorBuilder: (BuildContext context, int index) {
          return Container(
              height: 1,
              decoration: BoxDecoration(
                color: Color(0xFF000000),
              ));
        },
        itemCount: 2,
      ))
    ]));
  }
}
