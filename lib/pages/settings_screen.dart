import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:socialice/awidgets/arrow_back.dart';
import 'package:socialice/awidgets/black_container_button.dart';
import 'package:socialice/utils.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: [
                    ArrowBack(),
                    SizedBox(
                      width: 27,
                    ),
                    Text(
                      'Settings',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 23,
                        color: Color(0xFF000000),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 48,
              ),
              SettingTitle(title: "Preferences"),
              SizedBox(
                height: 6,
              ),
              SettingNotification(
                notificationType: 'Push Notifications',
                value: 'Disabled',
              ),
              SettingNotification(
                notificationType: 'Email Notifications',
                value: 'Disabled',
              ),
              SizedBox(
                height: 32,
              ),
              SettingTitle(title: 'Payments'),
              SizedBox(
                height: 6,
              ),
              SettingSubmenu(
                settingName: 'Executed payments',
              ),
              SizedBox(
                height: 32,
              ),
              SettingTitle(title: 'Organization'),
              SizedBox(
                height: 6,
              ),
              SettingSubmenu(settingName: 'Create a new group'),
              SizedBox(
                height: 32,
              ),
              SettingTitle(title: 'Help'),
              SizedBox(
                height: 6,
              ),
              SettingSubmenu(settingName: 'About Socialice'),
              SettingSubmenu(settingName: 'Get help'),
              SettingSubmenu(settingName: 'Send comments'),
              SettingSubmenu(settingName: 'Rate the app'),
              SizedBox(
                height: 32,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: BlackContainerButton(
                    text: 'Logout',
                    action: () => Navigator.pushNamedAndRemoveUntil(
                        context, "/LoginScreen", (route) => false)),
              ),
              SizedBox(
                height: 32,
              ),
              Center(
                child: Text(
                  'Disable  account',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: Color(0xFF3F8DFD),
                  ),
                ),
              ),
              SizedBox(
                height: 48,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

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

class SettingTitle extends StatelessWidget {
  const SettingTitle({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 16,
          color: Color(0xFF3F8DFD),
        ),
      ),
    );
  }
}
