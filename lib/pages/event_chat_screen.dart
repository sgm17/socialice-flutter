import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:socialice/utils.dart';

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

class EventChatConversation extends StatelessWidget {
  const EventChatConversation({
    super.key,
    required this.groupImage,
    required this.groupName,
    this.message,
    this.timestamp,
  });

  final String groupImage;
  final String groupName;
  final String? message;
  final String? timestamp;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: Row(
        children: [
          SizedBox(
            width: 16,
          ),
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  groupImage,
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
                groupName,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                  color: Color(0xFF000000),
                ),
              ),
              if (message != null)
                Text(
                  message!,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                    color: Color(0xFFC1C1CB),
                  ),
                ),
              if (timestamp != null)
                Text(
                  timestamp!,
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
    );
  }
}
