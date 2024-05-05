import 'package:flutter/material.dart';
import 'package:socialice/app_colors.dart';
import 'package:socialice/pages/add_comment_screen.dart';
import 'package:socialice/pages/all_events_not_found_screen.dart';
import 'package:socialice/pages/all_events_screen.dart';
import 'package:socialice/pages/all_groups_not_found_screen.dart';
import 'package:socialice/pages/all_groups_screen.dart';
import 'package:socialice/pages/app_screen.dart';
import 'package:socialice/pages/chat_screen.dart';
import 'package:socialice/pages/community_screen.dart';
import 'package:socialice/pages/confirmation_screen.dart';
import 'package:socialice/pages/direct_message_screen.dart';
import 'package:socialice/pages/discover_groups_screen.dart';
import 'package:socialice/pages/event_chat_screen.dart';
import 'package:socialice/pages/event_screen.dart';
import 'package:socialice/pages/events_screen.dart';
import 'package:socialice/pages/forgot_password_screen.dart';
import 'package:socialice/pages/highlighted_moments_screen.dart';
import 'package:socialice/pages/home_screen.dart';
import 'package:socialice/pages/interests_screen.dart';
import 'package:socialice/pages/login_screen.dart';
import 'package:socialice/pages/my_profile_screen.dart';
import 'package:socialice/pages/private_chat_screen.dart';
import 'package:socialice/pages/register_screen.dart';
import 'package:socialice/pages/settings_screen.dart';
import 'package:socialice/pages/splash_screen.dart';
import 'package:socialice/pages/start_screen.dart';
import 'package:socialice/pages/ticket_detail_screen.dart';
import 'package:socialice/pages/tickets_screen.dart';
import 'package:socialice/pages/user_profile_screen.dart';
import 'package:socialice/pages/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Socialice',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        fontFamily: 'Roboto',
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.blackColor),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/SplashScreen',
      routes: {
        '/SplashScreen': (context) => const SplashScreen(),
        '/AppScreen': (context) => const AppScreen(),
        '/AddCommentScreen': (context) => const AddCommentScreen(),
        '/AllEventsNotFoundScreen': (context) =>
            const AllEventsNotFoundScreen(),
        '/AllEventsScreen': (context) => const AllEventsScreen(),
        '/AllGroupsNotFoundScreen': (context) =>
            const AllGroupsNotFoundScreen(),
        '/AllGroupsScreen': (context) => const AllGroupsScreen(),
        '/ChatScreen': (context) => const ChatScreen(),
        '/CommunityScreen': (context) => const CommunityScreen(),
        '/ConfirmationScreen': (context) => const ConfirmationScreen(),
        '/DirectMessageScreen': (context) => const DirectMessageScreen(),
        '/DiscoverGroupsScreen': (context) => const DiscoverGroupsScreen(),
        '/EventChatScreen': (context) => const EventChatScreen(),
        '/EventScreen': (context) => const EventScreen(),
        '/EventsScreen': (context) => const EventsScreen(),
        '/ForgotPasswordScreen': (context) => const ForgotPasswordScreen(),
        '/HighlightedMomentsScreen': (context) =>
            const HighlightedMomentsScreen(),
        '/HomeScreen': (context) => const HomeScreen(),
        '/InterestsScreen': (context) => const InterestsScreen(),
        '/LoginScreen': (context) => const LoginScreen(),
        '/MyProfileScreen': (context) => const MyProfileScreen(),
        '/PrivateChatScreen': (context) => const PrivateChatScreen(),
        '/RegisterScreen': (context) => const RegisterScreen(),
        '/SettingsScreen': (context) => const SettingsScreen(),
        '/StartScreen': (context) => const StartScreen(),
        '/TicketDetailScreen': (context) => const TicketDetailScreen(),
        '/TicketsScreen': (context) => const TicketsScreen(),
        '/UserProfileScreen': (context) => const UserProfileScreen(),
        '/WelcomeScreen': (context) => const WelcomeScreen(),
      },
    );
  }
}
