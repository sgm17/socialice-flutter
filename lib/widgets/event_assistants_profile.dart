import 'package:flutter/material.dart';
import 'package:socialice/constants/app_colors.dart';
import 'package:socialice/domains/app_user_repository/src/models/app_user_model.dart';

class EventAssistantsProfile extends StatelessWidget {
  const EventAssistantsProfile({super.key, required this.assistants});

  final List<AppUserModel> assistants;

  @override
  Widget build(BuildContext context) {
    final List<Widget> profileWidgets = [];

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
          left: i * 24.5,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(17.5),
              border: Border.all(color: AppColors.whiteColor, width: 1.5),
              image: assistants[i].profileImage == null
                  ? DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/default_avatar.png"))
                  : DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(assistants[i].profileImage!),
                    ),
            ),
            width: 35,
            height: 35,
          ),
        ),
      );
    }

    // If there are more than 3 assistants, add a dark container with a text overlay
    if (assistants.length > 3) {
      profileWidgets.add(
        Positioned(
          left: 3 * 24.5,
          child: Container(
            height: 35.0,
            width: 35.0,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Color(0xFF1B1A1D),
                borderRadius: BorderRadius.circular(17.5),
                border: Border.all(color: AppColors.whiteColor, width: 1.5)),
            child: Text(
              '+${assistants.length - 3}',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 10,
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
