import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:socialice/constants/app_colors.dart';
import 'package:socialice/domains/event_repository/src/models/event_model.dart';
import 'package:socialice/providers/app_user_provider/app_user_provider.dart';
import 'package:socialice/utils/date_parser.dart';
import 'package:socialice/widgets/event_assistants_profile.dart';

class EventCrozy extends ConsumerWidget {
  const EventCrozy({super.key, required this.event});

  final EventModel event;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appUser = ref.watch(appUserProvider).asData?.value;

    if (appUser == null) {
      return SizedBox.shrink();
    }

    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, '/EventScreen',
          arguments: {'eventId': event.id}),
      child: Column(children: [
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            event.image,
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
                      child: SizedBox(
                        height: 250.8,
                        child: Container(
                            padding: EdgeInsets.fromLTRB(8, 16, 8, 0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: EventAssistantsProfile(assistants: []),
                                ),
                                GestureDetector(
                                    onTap: () => ref
                                        .read(appUserProvider.notifier)
                                        .toggleEventFavourite(event.id),
                                    child:
                                        appUser.favourites!.contains(event.id)
                                            ? Icon(Icons.favorite_rounded,
                                                size: 32,
                                                color: AppColors.redColor)
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
                      event.name,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: AppColors.blackColor,
                      ),
                    ),
                    SizedBox(
                      height: 4.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 26,
                                height: 26,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(13),
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(
                                      event.community.image,
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
                                width: 4.0,
                              ),
                              Container(
                                child: Text(
                                  event.community.name,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    color: AppColors.blackColor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          formatMonthWordDay(event.startDate),
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 10,
                            color: AppColors.greyDarkColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ])
      ]),
    );
  }
}
