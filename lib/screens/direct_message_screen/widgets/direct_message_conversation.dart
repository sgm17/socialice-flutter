import 'package:flutter/material.dart';

class DirectMessageConversation extends StatelessWidget {
  const DirectMessageConversation({
    super.key,
    required this.profileImage,
    required this.username,
    required this.message,
    required this.timestamp,
  });

  final String profileImage;
  final String username;
  final String message;
  final String timestamp;

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
                  profileImage,
                ),
              ),
            ),
          ),
          SizedBox(
            width: 12,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                username,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                  color: Color(0xFF000000),
                ),
              ),
              Text(
                message,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                  color: Color(0xFFC1C1CB),
                ),
              ),
              Text(
                timestamp,
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
