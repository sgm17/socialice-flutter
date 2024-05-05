import 'package:flutter/material.dart';
import 'package:socialice/app_colors.dart';
import 'package:socialice/pages/chat_screen.dart';
import 'package:socialice/pages/events_screen.dart';
import 'package:socialice/pages/home_screen.dart';
import 'package:socialice/pages/tickets_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppScreen extends StatefulWidget {
  const AppScreen({Key? key}) : super(key: key);

  @override
  State<AppScreen> createState() => _AppScreenState();
}

class _AppScreenState extends State<AppScreen> {
  static List<Widget> _widgetOptions = [
    HomeScreen(),
    EventsScreen(),
    TicketsScreen(),
    ChatScreen()
  ];

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
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
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
