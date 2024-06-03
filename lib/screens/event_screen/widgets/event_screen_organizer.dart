import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:socialice/constants/app_colors.dart';
import 'package:socialice/domains/app_user_repository/src/models/app_user_model.dart';
import 'package:socialice/providers/event_provider/events_provider.dart';

class EventScreenOrganizer extends ConsumerWidget {
  const EventScreenOrganizer({
    super.key,
    required this.id,
    required this.isOwner,
    required this.organizer,
  });
  final String id;
  final bool isOwner;
  final AppUserModel organizer;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dismissWidget = Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: organizer.profileImage == null
                ? DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/default_avatar.png"))
                : DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      organizer.profileImage!,
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
    );

    if (isOwner) {
      return dismissWidget;
    }

    Future<bool?> handleConfirmDismiss(DismissDirection direction) async {
      return await ref
          .read(eventsProvider.notifier)
          .updateOrganizers(eventId: id, username: organizer.username);
    }

    return Dismissible(
        confirmDismiss: handleConfirmDismiss,
        key: Key(organizer.id.toString()),
        background: Container(color: AppColors.redColor),
        child: dismissWidget);
  }
}
