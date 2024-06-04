import 'package:flutter/material.dart';
import 'package:socialice/constants/app_colors.dart';
import 'package:socialice/screens/direct_message_screen/direct_message_screen.dart';
import 'package:socialice/screens/event_chat_screen/event_chat_screen.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  int _selectedIndex = 0;

  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _selectedIndex);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // not necessary arguments as is a main screen
    final Map<String, dynamic>? args =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;
    if (args != null) {
      _selectedIndex = args["selectedIndex"];
    }

    return Scaffold(
        body: SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 32,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'Messages',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 28,
                color: Color(0xFF1B1A1D),
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedIndex = 0;
                    });
                    _pageController.jumpToPage(0);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        border: _selectedIndex == 0
                            ? Border(
                                bottom: BorderSide(
                                    width: 2, color: AppColors.blackColor))
                            : null),
                    child: Text(
                      'EVENT CHAT',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                        color: Color(0xFF000000),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedIndex = 1;
                    });
                    _pageController.jumpToPage(1);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        border: _selectedIndex == 1
                            ? Border(
                                bottom: BorderSide(
                                    width: 2, color: AppColors.blackColor))
                            : null),
                    child: Text(
                      'DIRECT MESSAGES',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                        color: Color(0xFF000000),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          Expanded(
              child: PageView(
            controller: _pageController,
            onPageChanged: (value) {
              setState(() {
                _selectedIndex = value;
              });
            },
            children: [EventChatScreen(), DirectMessageScreen()],
          ))
        ],
      ),
    ));
  }
}
