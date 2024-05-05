import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:socialice/pages/direct_message_screen.dart';
import 'package:socialice/pages/event_chat_screen.dart';

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
    return Scaffold(
        body: SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'Messages',
              style: TextStyle(
                fontWeight: FontWeight.w400,
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
              Flexible(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedIndex = 0;
                    });
                    _pageController.jumpToPage(0);
                  },
                  child: Column(
                    children: [
                      Container(
                        child: SizedBox(
                          width: 160.5,
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
                      AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        child: Container(
                          height: _selectedIndex == 0
                              ? 2
                              : 0, // Set height to 2 when selected, otherwise 0
                          decoration: BoxDecoration(
                            color: Color(0xFF000000),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Flexible(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedIndex = 1;
                    });
                    _pageController.jumpToPage(1);
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'DIRECT  MESSAGES',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: Color(0xFF000000),
                        ),
                      ),
                      AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        child: Container(
                          height: _selectedIndex == 1
                              ? 2
                              : 0, // Set height to 2 when selected, otherwise 0
                          decoration: BoxDecoration(
                            color: Color(0xFF000000),
                          ),
                        ),
                      ),
                    ],
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
