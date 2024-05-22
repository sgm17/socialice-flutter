import 'package:flutter/material.dart';
import 'package:socialice/screens/direct_message_screen/widgets/direct_message_conversation.dart';

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
