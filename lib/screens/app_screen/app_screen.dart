import 'package:socialice/providers/firebase_user_provider/firebase_user_provider.dart';
import 'package:socialice/providers/app_provider/bottom_navigation_provider.dart';
import 'package:socialice/screens/tickets_screen/tickets_screen.dart';
import 'package:socialice/screens/events_screen/events_screen.dart';
import 'package:socialice/screens/chat_screen/chat_screen.dart';
import 'package:socialice/screens/home_screen/home_screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:socialice/constants/app_colors.dart';
import 'package:flutter/material.dart';

class AppScreen extends ConsumerWidget {
  const AppScreen({Key? key}) : super(key: key);

  static const List<Widget> _widgetOptions = [
    HomeScreen(),
    EventsScreen(),
    TicketsScreen(),
    ChatScreen()
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    void _onItemTapped(int index) {
      // update the index of the bottom navigation bar
      ref.read(bottomNavigationProvider.notifier).state = index;
    }

    final bottomNavigationState = ref.watch(bottomNavigationProvider);
    // final user = ref.watch(firebaseUserProvider);

    // TODO: handle this case
    // if (user == null) {
    //   Navigator.pushNamedAndRemoveUntil(
    //       context, "/LoginScreen", (route) => false);
    // }

    return Scaffold(
      body: _widgetOptions.elementAt(bottomNavigationState),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_rounded,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.calendar_month,
              ),
              label: 'Events'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.confirmation_num,
              ),
              label: 'Tickets'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.message,
              ),
              label: 'Chat')
        ],
        selectedItemColor: AppColors.blackColor,
        unselectedItemColor: AppColors.greyLightColor,
        currentIndex: bottomNavigationState,
        onTap: _onItemTapped,
      ),
    );
  }
}
