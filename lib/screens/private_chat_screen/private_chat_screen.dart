import 'package:flutter/material.dart';
import 'package:socialice/widgets/arrow_back.dart';
import 'package:socialice/screens/private_chat_screen/widgets/private_chat_bottom_bar.dart';
import 'package:socialice/screens/private_chat_screen/widgets/private_chat_received_message.dart';
import 'package:socialice/screens/private_chat_screen/widgets/private_chat_sent_message.dart';
import 'package:socialice/screens/private_chat_screen/widgets/private_chat_timestamp.dart';

class PrivateChatScreen extends StatelessWidget {
  const PrivateChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String weekDay = "miércoles";
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: SafeArea(
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
                        Row(
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
                                    'assets/images/private_avatar_image.png',
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Mati',
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
                    SizedBox(
                      height: 32,
                    ),
                    PrivateChatTimestamp(weekDay: weekDay),
                    SizedBox(
                      height: 8,
                    ),
                    PrivateChatSentMessage(
                      message:
                          'es la primera vez que escucho tu nombre. de donde eres??',
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    PrivateChatTimestamp(weekDay: weekDay),
                    SizedBox(
                      height: 8,
                    ),
                    PrivateChatReceivedMessage(
                        username: 'Laura',
                        message:
                            'jajaja soy de chile pero vivo en bcn desde enero'),
                    SizedBox(
                      height: 8,
                    ),
                    PrivateChatReceivedMessage(
                      username: 'Laura',
                      message:
                          'estoy ahora buscando trabajo. suerte que hablo el mismo idioma',
                    ),
                  ],
                ),
              ),
            ),
          ),
          PrivateChatBottomBar(),
        ],
      ),
    );
  }
}
