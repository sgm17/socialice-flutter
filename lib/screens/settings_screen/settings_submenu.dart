import 'package:flutter/material.dart';

class SettingSubmenu extends StatelessWidget {
  const SettingSubmenu({
    super.key,
    required this.settingName,
  });

  final String settingName;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => print(''),
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(16),
        child: Text(
          settingName,
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 18,
            color: Color(0xFF1B1A1D),
          ),
        ),
      ),
    );
  }
}
