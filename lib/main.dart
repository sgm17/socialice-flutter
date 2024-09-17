import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:socialice/constants/app_colors.dart';
import 'package:socialice/screens/add_comment_screen/add_comment_screen.dart';
import 'package:socialice/screens/all_events_screen/all_events_screen.dart';
import 'package:socialice/screens/all_groups_not_found_screen/all_groups_not_found_screen.dart';
import 'package:socialice/screens/all_groups_screen/all_groups_screen.dart';
import 'package:socialice/screens/app_screen/app_screen.dart';
import 'package:socialice/screens/chat_screen/chat_screen.dart';
import 'package:socialice/screens/community_screen/community_screen.dart';
import 'package:socialice/screens/confirmation_screen/confirmation_screen.dart';
import 'package:socialice/screens/create_comunity_screen/create_comunity_screen.dart';
import 'package:socialice/screens/create_event_screen/create_event_screen.dart';
import 'package:socialice/screens/direct_message_screen/direct_message_screen.dart';
import 'package:socialice/screens/discover_groups_screen/discover_groups_screen.dart';
import 'package:socialice/screens/edit_profile_screen/edit_profile_screen.dart';
import 'package:socialice/screens/event_chat_detail_screen/event_chat_detail_screen.dart';
import 'package:socialice/screens/event_chat_screen/event_chat_screen.dart';
import 'package:socialice/screens/event_screen/event_screen.dart';
import 'package:socialice/screens/events_screen/events_screen.dart';
import 'package:socialice/screens/forgot_password_screen/forgot_password_screen.dart';
import 'package:socialice/screens/highlighted_moments_screen/highlighted_moments_screen.dart';
import 'package:socialice/screens/home_screen/home_screen.dart';
import 'package:socialice/screens/interests_screen/interests_screen.dart';
import 'package:socialice/screens/joined_community_screen/joined_community_screen.dart';
import 'package:socialice/screens/login_screen/login_screen.dart';
import 'package:socialice/screens/my_profile_screen/my_profile_screen.dart';
import 'package:socialice/screens/private_chat_screen/private_chat_screen.dart';
import 'package:socialice/screens/register_screen/register_screen.dart';
import 'package:socialice/screens/select_city_screen/select_city_screen.dart';
import 'package:socialice/screens/settings_screen/settings_screen.dart';
import 'package:socialice/screens/splash_screen/splash_screen.dart';
import 'package:socialice/screens/start_screen/start_screen.dart';
import 'package:socialice/screens/ticket_detail_screen/ticket_detail_screen.dart';
import 'package:socialice/screens/tickets_screen/tickets_screen.dart';
import 'package:socialice/screens/user_profile_screen/user_profile_screen.dart';
import 'package:socialice/screens/wallet_screen/wallet_screen.dart';
import 'package:socialice/screens/welcome_screen/welcome_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();

  runApp(ProviderScope(child: const MyApp()));
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
        textTheme: GoogleFonts.robotoTextTheme(
          Theme.of(context).textTheme,
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.blackColor),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/AppScreen',
      routes: {
        '/SplashScreen': (context) => const SplashScreen(),
        '/AppScreen': (context) => const AppScreen(),
        '/AddCommentScreen': (context) => const AddCommentScreen(),
        '/AllEventsScreen': (context) => const AllEventsScreen(),
        '/AllGroupsNotFoundScreen': (context) =>
            const AllGroupsNotFoundScreen(),
        '/AllGroupsScreen': (context) => const AllGroupsScreen(),
        '/ChatScreen': (context) => const ChatScreen(),
        '/CommunityScreen': (context) => CommunityScreen(),
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
        '/MyProfileScreen': (context) => MyProfileScreen(),
        '/PrivateChatScreen': (context) => const PrivateChatScreen(),
        '/RegisterScreen': (context) => const RegisterScreen(),
        '/SettingsScreen': (context) => const SettingsScreen(),
        '/StartScreen': (context) => const StartScreen(),
        '/TicketDetailScreen': (context) => const TicketDetailScreen(),
        '/TicketsScreen': (context) => const TicketsScreen(),
        '/UserProfileScreen': (context) => UserProfileScreen(),
        '/WelcomeScreen': (context) => const WelcomeScreen(),
        '/EditProfileScreen': (context) => const EditProfileScreen(),
        '/SelectCityScreen': (context) => const SelectCityScreen(),
        '/WalletScreen': (context) => const WalletScreen(),
        '/CreateEventScreen': (context) => const CreateEventScreen(),
        '/CreateCommunityScreen': (context) => const CreateCommunityScreen(),
        '/JoinedCommunityScreen': (context) => const JoinedCommunityScreen(),
        '/EventChatDetailScreen': (context) => const EventChatDetailScreen()
      },
    );
  }
}
