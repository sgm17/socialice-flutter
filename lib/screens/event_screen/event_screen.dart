import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:socialice/constants/app_colors.dart';
import 'package:socialice/dialogs/select_dialog/select_dialog.dart';
import 'package:socialice/providers/app_provider/bottom_navigation_provider.dart';
import 'package:socialice/providers/app_user_provider/app_user_provider.dart';
import 'package:socialice/providers/event_provider/events_provider.dart';
import 'package:socialice/screens/event_screen/widgets/comment_item.dart';
import 'package:socialice/utils/date_parser.dart';
import 'package:socialice/widgets/arrow_back.dart';
import 'package:socialice/widgets/black_container_button.dart';
import 'package:socialice/screens/event_screen/widgets/detail_location_map.dart';
import 'package:socialice/screens/event_screen/widgets/event_screen_add_organizer.dart';
import 'package:socialice/screens/event_screen/widgets/event_screen_organizer.dart';

class EventScreen extends ConsumerWidget {
  const EventScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Map<String, dynamic> args =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    final String eventId = args['eventId'];

    final events = ref.watch(eventsProvider).asData?.value;
    final appUser = ref.watch(appUserProvider).asData?.value;

    final event = events?.where((e) => e.id == eventId).firstOrNull;

    if (event == null || appUser == null) {
      return SizedBox.shrink();
    }

    final assistentsLength =
        event.participants!.length >= 4 ? 4 : event.participants!.length;

    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 24),
                  child: Container(
                    height: 280,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          event.image,
                        ),
                      ),
                    ),
                  ),
                ),
                if (event.endTimestamp.isBefore(DateTime.now()))
                  Positioned(
                    top: 280 - 30,
                    left: 0,
                    right: 0,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFB8B8B8),
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        height: 30,
                        child: Text(
                          'The event has finished.',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Color(0xFFFFFFFF),
                          ),
                        ),
                      ),
                    ),
                  ),
                SafeArea(
                    child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Column(children: [
                          SizedBox(
                            height: 32,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: ArrowBack(
                                    color: AppColors.whiteColor,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.fromLTRB(0, 3, 0, 2),
                                  child: Text(
                                    'Event Details',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18,
                                      color: Color(0xFFFFFFFF),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    if (appUser.favourites!.contains(event.id))
                                      GestureDetector(
                                        onTap: () => ref
                                            .read(appUserProvider.notifier)
                                            .toggleEventFavourite(eventId),
                                        child: Icon(
                                          size: 32,
                                          Icons.favorite_rounded,
                                          color: AppColors.redColor,
                                        ),
                                      )
                                    else
                                      GestureDetector(
                                        onTap: () => ref
                                            .read(appUserProvider.notifier)
                                            .toggleEventFavourite(eventId),
                                        child: Icon(
                                          size: 32,
                                          Icons.favorite_outline,
                                          color: AppColors.whiteColor,
                                        ),
                                      ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Icon(
                                      Icons.ios_share_rounded,
                                      size: 32,
                                      color: AppColors.whiteColor,
                                    )
                                  ],
                                ),
                              ),
                            ],
                          )
                        ]))),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 280,
                        ),
                        SizedBox(
                          height: 23,
                        ),
                        if (event.popular)
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xFFDDDDDD),
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: SizedBox(
                              width: 157.7,
                              child: Container(
                                padding: EdgeInsets.fromLTRB(6.3, 5, 0, 5.1),
                                child: Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.fromLTRB(
                                          0, 0.5, 16.3, 0.5),
                                      child: Transform.rotate(
                                        angle: -0.7853981805,
                                        child: Container(
                                          width: 15.1,
                                          height: 15.1,
                                          child: SizedBox(
                                            width: 15.1,
                                            height: 15.1,
                                            child: SvgPicture.asset(
                                              'assets/vectors/vector_24_x2.svg',
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      'Popular event',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                        color: Color(0xFF1B1A1D),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        SizedBox(
                          height: 23,
                        ),
                        Container(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.fromLTRB(0, 0, 0, 4),
                                      child: Text(
                                        event.name,
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 23,
                                          color: Color(0xFF000000),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        event.placeName,
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14,
                                          color: AppColors.greyDarkColor,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      formatMonthWordDayYear(
                                          event.startTimestamp),
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                        color: AppColors.greyDarkColor,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 16,
                              ),
                              Expanded(
                                child: Container(
                                  height: 135,
                                  width: 95.19,
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
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 23,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 16.9,
                              height: 19,
                              child: SizedBox(
                                width: 16.9,
                                height: 19,
                                child: SvgPicture.asset(
                                  'assets/vectors/vector_52_x2.svg',
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 0, 8),
                                  child: Text(
                                    formatDayWordMonthWordDayYear(
                                        event.startTimestamp),
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 18,
                                      color: Color(0xFF000000),
                                    ),
                                  ),
                                ),
                                Text(
                                  "${formatDateHour(event.startTimestamp)} - ${formatDateHour(event.endTimestamp)}",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    color: Color(0xFF000000),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 14,
                        ),
                        Container(
                          height: 1,
                          child: Container(
                            decoration: BoxDecoration(
                              color: AppColors.greyLightColor,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 14.0,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 14.9,
                              height: 18.4,
                              child: SizedBox(
                                width: 14.9,
                                height: 18.4,
                                child: SvgPicture.asset(
                                  'assets/vectors/vector_30_x2.svg',
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 0, 8),
                                  child: Text(
                                    event.placeName,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 18,
                                      color: Color(0xFF000000),
                                    ),
                                  ),
                                ),
                                Text(
                                  event.completeAddress,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    color: Color(0xFF000000),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 14,
                        ),
                        Container(
                          height: 1,
                          decoration: BoxDecoration(
                            color: AppColors.greyLightColor,
                          ),
                        ),
                        SizedBox(
                          height: 14,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 18.4,
                              height: 17,
                              child: SizedBox(
                                width: 18.4,
                                height: 17,
                                child: SvgPicture.asset(
                                  'assets/vectors/vector_32_x2.svg',
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            GestureDetector(
                              onTap: () {
                                ref
                                    .read(bottomNavigationProvider.notifier)
                                    .state = 3;
                                Navigator.pushNamedAndRemoveUntil(
                                    context,
                                    '/PrivateChatScreen',
                                    ModalRoute.withName('/AppScreen'),
                                    arguments: {
                                      "selectedIndex": 0,
                                      "chatId": 1
                                    });
                              },
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 0, 0, 8),
                                    child: Text(
                                      'Event chat',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 18,
                                        color: Color(0xFF000000),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    'Stay in touch for this event',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                      color: Color(0xFF000000),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 14,
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        Container(
                          height: 1,
                          decoration: BoxDecoration(
                            color: AppColors.greyLightColor,
                          ),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        GestureDetector(
                          onTap: () =>
                              Navigator.pushNamed(context, '/CommunityScreen'),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 28,
                                height: 28,
                                margin: EdgeInsets.fromLTRB(0, 0, 13, 0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(14),
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
                              Text(
                                event.community.name,
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20,
                                  color: Color(0xFF000000),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 0, 13),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  'Description',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20,
                                    color: Color(0xFF000000),
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              event.description,
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: AppColors.greyDarkColor,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        Text(
                          'Organizer (${event.organizers!.length + 1})',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Color(0xFF000000),
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        EventScreenOrganizer(
                          organizer: event.community.owner,
                          isOwner: true,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            for (var organizer in event.organizers!)
                              EventScreenOrganizer(
                                organizer: organizer,
                                isOwner: false,
                              ),
                            SizedBox(
                              height: 16,
                            ),
                          ],
                        ),
                        if (appUser.id == event.community.owner.id)
                          EventScreenAddOrganizer(),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Assistents (${event.participants!.length})',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Color(0xFF000000),
                              ),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            if (event.participants!.isEmpty)
                              Container(
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: AppColors.blackColor,
                                    ),
                                    borderRadius: BorderRadius.circular(20)),
                                height: 40,
                                width: 40,
                                child: Icon(
                                  Icons.no_accounts_outlined,
                                  size: 20,
                                ),
                              )
                            else
                              Container(
                                height: 40,
                                child: Stack(
                                  children: [
                                    for (int i = 0; i < assistentsLength; i++)
                                      Positioned(
                                        left: i * 30,
                                        child: Container(
                                          width: 40,
                                          height: 40,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: NetworkImage(
                                                'assets/images/event_assistent_4.png',
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                  ],
                                ),
                              )
                          ],
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 0, 9),
                              child: Text(
                                'Location',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20,
                                  color: Color(0xFF000000),
                                ),
                              ),
                            ),
                            Text(
                              'Sattva Yoga, Ayurveda, Plant-Based Kitchen Erlachstrasse 26, Zürich, ch',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Color(0xFF000000),
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            SizedBox(
                              height: 148,
                              child: DetailLocationMap(
                                geometry: [
                                  8.683401883079997,
                                  47.25733307983928
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Photos',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20,
                                  color: Color(0xFF000000),
                                ),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              SizedBox(
                                height: 222.2,
                                child: ListView.separated(
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder: (context, index) {
                                      if (index == 0) {
                                        return SizedBox(
                                          width: 125,
                                          height: 222.2,
                                          child: Container(
                                              alignment: Alignment.center,
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color:
                                                          Color(0xFFC1C1CB))),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    'Add a photo',
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 16,
                                                      color: Color(0xFF1B1A1D),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 6,
                                                  ),
                                                  Icon(Icons
                                                      .add_a_photo_outlined)
                                                ],
                                              )),
                                        );
                                      } else {
                                        final newIndex = index - 1;
                                        return Container(
                                          width: 125,
                                          height: 222.2,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: NetworkImage(
                                                event.highlights![newIndex]
                                                    .image,
                                              ),
                                            ),
                                          ),
                                        );
                                      }
                                    },
                                    separatorBuilder: (context, index) =>
                                        SizedBox(
                                          width: 12,
                                        ),
                                    itemCount: event.highlights!.length + 1),
                              ),
                            ]),
                        SizedBox(
                          height: 32,
                        ),
                        Text(
                          'Comments',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            color: Color(0xFF000000),
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 28,
                              height: 28,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(14),
                                image: appUser.profileImage == null
                                    ? DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            "assets/images/default_avatar.png"))
                                    : DecorationImage(
                                        fit: BoxFit.cover,
                                        image: NetworkImage(
                                          appUser.profileImage!,
                                        ),
                                      ),
                              ),
                            ),
                            SizedBox(
                              width: 24,
                            ),
                            GestureDetector(
                              onTap: () async {
                                final comment = await Navigator.pushNamed(
                                    context, '/AddCommentScreen') as String?;
                                if (comment != null && comment.isNotEmpty) {
                                  await ref
                                      .read(eventsProvider.notifier)
                                      .handleCreateComment(
                                          eventId: eventId, comment: comment);
                                }
                              },
                              child: Text(
                                'Add a comment',
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Color(0xFF3F8DFD),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        for (int i = 0; i < event.comments!.length; i++)
                          Padding(
                            padding: EdgeInsets.only(top: i != 0 ? 16.0 : 0.0),
                            child: CommentItem(
                              comment: event.comments![i],
                            ),
                          ),
                        if (!event.reports.contains(appUser.id))
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 32,
                              ),
                              GestureDetector(
                                onTap: () async {
                                  showDialog(
                                      context: context,
                                      builder: (context) {
                                        return SelectDialog(
                                          message:
                                              "Are you sure that you want to report this event?",
                                          redButtonText: "Report",
                                        );
                                      }).then((value) async {
                                    if (value) {
                                      await ref
                                          .read(eventsProvider.notifier)
                                          .handleReportEvent(eventId: eventId);
                                    }
                                  });
                                },
                                child: Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              color: AppColors.blackColor),
                                          top: BorderSide(
                                              color: AppColors.blackColor))),
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 20.0),
                                  child: Text(
                                    'Report this event',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 18,
                                      color: Color(0xFF3F8DFD),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        SizedBox(
                          height: 128,
                        )
                      ]),
                )
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                  border: Border(
                      top: BorderSide(color: AppColors.blackColor, width: 1))),
              alignment: Alignment.bottomCenter,
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Start from',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: AppColors.blackColor,
                        ),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      if (event.priceWithoutDiscount != null)
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "${event.price.toString()} CHF",
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 25,
                                color: AppColors.blackColor,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "${event.priceWithoutDiscount} CHF",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                decoration: TextDecoration.lineThrough,
                                fontSize: 18,
                                color: AppColors.redColor,
                              ),
                            ),
                          ],
                        )
                      else
                        Text(
                          "${event.price.toString()} CHF",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 25,
                            color: AppColors.blackColor,
                          ),
                        ),
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Color(0xFF1B1A1D),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x40000000),
                          offset: Offset(0, 4),
                          blurRadius: 2,
                        ),
                      ],
                    ),
                    child: Container(
                        width: 163,
                        child: BlackContainerButton(
                          text: 'Purchase',
                          action: () => Navigator.pushNamed(
                              context, '/ConfirmationScreen'),
                        )),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
