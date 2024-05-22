import 'package:flutter/material.dart';
import 'package:socialice/constants/app_colors.dart';
import 'package:socialice/domains/app_user_repository/src/models/app_user_model.dart';

class EventScreenOrganizer extends StatelessWidget {
  const EventScreenOrganizer({
    super.key,
    required this.isOwner,
    required this.organizer,
  });

  final bool isOwner;
  final AppUserModel organizer;

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      confirmDismiss: handleConfirmDismiss,
      key: Key(organizer.id.toString()),
      background: Container(color: AppColors.redColor),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  organizer.profileImage,
                ),
              ),
            ),
          ),
          SizedBox(
            width: 14,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${organizer.name} ${organizer.surname}",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Color(0xFF000000),
                ),
              ),
              Text(
                '@${organizer.username}',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: AppColors.greyLightColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Future<bool?> handleConfirmDismiss(DismissDirection direction) {
    return Future.delayed(Duration.zero, null);
  }
}
