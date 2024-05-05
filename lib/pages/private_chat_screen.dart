import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:socialice/app_colors.dart';
import 'package:socialice/awidgets/arrow_back.dart';
import 'package:socialice/utils.dart';

class PrivateChatScreen extends StatelessWidget {
  const PrivateChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String weekDay = "miércoles";
    String time = "10:05";
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
                                  image: AssetImage(
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

class PrivateChatBottomBar extends StatelessWidget {
  const PrivateChatBottomBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border(
              top: BorderSide(color: AppColors.greyLightColor, width: 1))),
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: TextField(
                maxLength: 100,
                textAlignVertical: TextAlignVertical.center,
                style: TextStyle(
                  color: AppColors.blackColor,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w400,
                ),
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(10, 14, 0, 14),
                    counter: SizedBox.shrink(),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: AppColors.greyLightColor,
                          width: 1,
                        )),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: AppColors.greyLightColor, width: 1)),
                    isCollapsed: true,
                    hintText: 'Message...',
                    hintStyle: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400,
                      color: AppColors.blackColor,
                    ))),
          ),
          SizedBox(
            width: 6,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: SizedBox(
                height: 40,
                width: 40,
                child: SvgPicture.asset('assets/vectors/send_icon.svg')),
          )
        ],
      ),
    );
  }
}

class PrivateChatReceivedMessage extends StatelessWidget {
  const PrivateChatReceivedMessage({
    super.key,
    required this.message,
    required this.username,
  });

  final String message;
  final String username;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          children: [
            Container(
              width: 35,
              height: 35,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(17.5),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'assets/images/private_avatar_image.png',
                  ),
                ),
              ),
            ),
            Text(
              username,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 10,
                color: Color(0xFF000000),
              ),
            ),
          ],
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(10),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Color(0xFFE5E5E5),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                    ),
                  ),
                  child: Text(
                    message,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Color(0xFF000000),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: (MediaQuery.of(context).size.width - 128) / 3,
              )
            ],
          ),
        ),
      ],
    );
  }
}

class PrivateChatSentMessage extends StatelessWidget {
  const PrivateChatSentMessage({
    super.key,
    required this.message,
  });

  final String message;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: (MediaQuery.of(context).size.width - 128) / 3,
        ),
        Expanded(
          child: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Color(0xFF3F8DFD),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              ),
            ),
            child: Text(
              message,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: Color(0xFFFFFFFF),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class PrivateChatTimestamp extends StatelessWidget {
  const PrivateChatTimestamp({
    super.key,
    required this.weekDay,
  });

  final String weekDay;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: RichText(
        text: TextSpan(
          text: '${weekDay} ',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 12,
            color: Color(0xFF000000),
          ),
          children: [
            TextSpan(
              text: '10:05',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 12,
                height: 1.3,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
