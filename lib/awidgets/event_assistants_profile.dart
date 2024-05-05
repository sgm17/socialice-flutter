import 'package:flutter/material.dart';
import 'package:socialice/app_colors.dart';

class EventAssistantsProfile extends StatelessWidget {
  EventAssistantsProfile({super.key, required this.assistants});

  final List<String> assistants;

  List<Widget> profileWidgets = [];

  @override
  Widget build(BuildContext context) {
    if (assistants.isEmpty) {
      return SizedBox.shrink();
    }

    int numberOfAssistantsToShow = assistants.length;

    // Determine the number of assistants to show based on the list length
    if (assistants.length > 3) {
      numberOfAssistantsToShow = 3;
    }

    // Create profile image widgets for each assistant
    for (int i = 0; i < numberOfAssistantsToShow; i++) {
      profileWidgets.add(
        Positioned(
          left: i * 17,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13),
              border: Border.all(color: AppColors.whiteColor, width: 1.5),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    'https://img.freepik.com/premium-photo/profile-shot-asian-cute-woman-perfect-skin-turn-left-smiling-joyfully-pose-near-blue-background-standing-queue-awaiting-coffee-take-away-relaxed-chatting-girlfriend-wear-yellow-summer-t-shirt_1258-57885.jpg'),
              ),
            ),
            width: 26,
            height: 26,
          ),
        ),
      );
    }

    // If there are more than 3 assistants, add a dark container with a text overlay
    if (assistants.length > 3) {
      profileWidgets.add(
        Positioned(
          left: 48,
          child: Container(
            height: 26.0,
            width: 26.0,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Color(0xFF1B1A1D),
                borderRadius: BorderRadius.circular(13),
                border: Border.all(color: AppColors.whiteColor, width: 1.5)),
            child: Text(
              '+${assistants.length - 3}',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 8,
                color: Color(0xFFFFFFFF),
              ),
            ),
          ),
        ),
      );
    }

    // Return the stack containing the profile image widgets
    return Stack(
      children: profileWidgets,
    );
  }
}
