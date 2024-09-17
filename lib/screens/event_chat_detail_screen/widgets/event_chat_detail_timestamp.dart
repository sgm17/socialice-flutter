import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:socialice/utils/date_parser.dart';

class EventChatDetailTimestamp extends StatelessWidget {
  const EventChatDetailTimestamp({
    super.key,
    required this.createdAt,
  });

  final DateTime createdAt;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: RichText(
        text: TextSpan(
          text: '${DateFormat("EEEE").format(createdAt).toLowerCase()} ',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 12,
            color: Color(0xFF000000),
          ),
          children: [
            TextSpan(
              text: formatTimestamp(createdAt),
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
