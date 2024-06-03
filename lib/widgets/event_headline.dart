import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:socialice/constants/app_colors.dart';
import 'package:socialice/domains/event_repository/src/models/event_model.dart';
import 'package:socialice/providers/app_user_provider/app_user_provider.dart';
import 'package:socialice/utils/date_parser.dart';
import 'package:socialice/widgets/event_assistants_profile.dart';

class EventHeadline extends ConsumerWidget {
  const EventHeadline({
    required this.eventHeadline,
    super.key,
  });

  final EventModel eventHeadline;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appUser = ref.watch(appUserProvider).asData?.value;

    if (appUser == null) {
      return SizedBox.shrink();
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () => Navigator.pushNamed(context, '/EventScreen',
              arguments: {'eventId': eventHeadline.id}),
          child: Container(
            height: 203,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  eventHeadline.image,
                ),
              ),
            ),
            child: Container(
                padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: EventAssistantsProfile(
                          assistants: eventHeadline.participants!),
                    ),
                    GestureDetector(
                        onTap: () => ref
                            .read(appUserProvider.notifier)
                            .toggleEventFavourite(eventHeadline.id),
                        child: appUser.favourites!.contains(eventHeadline.id)
                            ? Icon(Icons.favorite_rounded,
                                size: 32, color: AppColors.redColor)
                            : Icon(
                                size: 32,
                                Icons.favorite_outline,
                                color: AppColors.whiteColor,
                              ))
                  ],
                )),
          ),
        ),
        SizedBox(
          height: 16.0,
        ),
        Text(
          eventHeadline.name,
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 16,
            color: AppColors.blackColor,
          ),
        ),
        SizedBox(
          height: 4.0,
        ),
        GestureDetector(
          onTap: () => Navigator.pushNamed(context, '/CommunityScreen',
              arguments: {'communityId': eventHeadline.id}),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          eventHeadline.community.image,
                        ),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x40000000),
                          offset: Offset(0, 4),
                          blurRadius: 2,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  Text(
                    eventHeadline.community.name,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: AppColors.blackColor,
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 7.5, 0, 6.5),
                child: Text(
                  formatMonthWordDayYear(eventHeadline.startDate),
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 10,
                    color: AppColors.greyDarkColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
