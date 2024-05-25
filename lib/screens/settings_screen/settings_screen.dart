import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:socialice/providers/app_user_provider/app_user_provider.dart';
import 'package:socialice/screens/settings_screen/settings_wallet_submenu.dart';
import 'package:socialice/widgets/arrow_back.dart';
import 'package:socialice/widgets/black_container_button.dart';
import 'package:socialice/screens/settings_screen/settings_notification.dart';
import 'package:socialice/screens/settings_screen/settings_submenu.dart';
import 'package:socialice/screens/settings_screen/widgets/settings_title.dart';

class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appUser = ref.watch(appUserProvider).asData!.value;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 32,
              ),
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
              SettingsWalletSubmenu(),
              if (appUser.createdCommunity == null)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 32,
                    ),
                    SettingTitle(title: 'Organization'),
                    SizedBox(
                      height: 6,
                    ),
                    SettingSubmenu(settingName: 'Create a new group'),
                  ],
                ),
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
                  'Disable account',
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
