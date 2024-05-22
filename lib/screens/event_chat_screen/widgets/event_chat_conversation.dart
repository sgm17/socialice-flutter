import 'package:flutter/material.dart';

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
