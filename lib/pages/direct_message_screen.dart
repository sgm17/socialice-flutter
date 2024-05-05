import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:socialice/utils.dart';

class DirectMessageScreen extends StatelessWidget {
  const DirectMessageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: () =>
                      Navigator.pushNamed(context, '/PrivateChatScreen'),
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 12),
                    child: DirectMessageConversation(
                      username: "Boryana",
                      message: 'este es un mensaje de prueba',
                      timestamp: "Hace 6 minutos",
                      profileImage:
                          "assets/images/direct_message_avatar_image.png",
                    ),
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return Container(
                  height: 1,
                  decoration: BoxDecoration(
                    color: Color(0xFF000000),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

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
