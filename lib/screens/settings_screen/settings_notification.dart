import 'package:flutter/material.dart';

class SettingNotification extends StatelessWidget {
  const SettingNotification({
    super.key,
    required this.notificationType,
    required this.value,
  });

  final String notificationType;
  final String value;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => print(''),
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              notificationType,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 18,
                color: Color(0xFF1B1A1D),
              ),
            ),
            Text(
              value,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: Color(0xFFC1C1CB),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
