import 'package:flutter/material.dart';

class MyEventsSubtitle extends StatelessWidget {
  const MyEventsSubtitle({
    super.key,
    required this.subtitle,
  });

  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
      child: Align(
        alignment: Alignment.topLeft,
        child: Text(
          subtitle,
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 16,
            color: Color(0xFF3F8DFD),
          ),
        ),
      ),
    );
  }
}
