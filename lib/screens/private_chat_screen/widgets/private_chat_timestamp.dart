import 'package:flutter/material.dart';

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
