import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:socialice/constants/app_colors.dart';
import 'package:socialice/providers/app_user_provider/app_user_provider.dart';
import 'package:socialice/providers/event_provider/events_provider.dart';
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

    final int eventId = args['eventId'];

    final events = ref.watch(eventsProvider).asData?.value;

    final event = events?.where((e) => e.id == eventId).firstOrNull;

    return Scaffold(
      body: event == null
          ? SizedBox.shrink()
          : Stack(
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
                              image: AssetImage(
                                event.horizontalImage,
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
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16.0),
                              child: Column(children: [
                                SizedBox(
                                  height: 32,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: ArrowBack(
                                        color: AppColors.whiteColor,
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          if (event.favourite)
                                            GestureDetector(
                                              onTap: () => ref
                                                  .read(eventsProvider.notifier)
                                                  .toggleEventFavourite(
                                                      eventId),
                                              child: Icon(
                                                size: 32,
                                                Icons.favorite_rounded,
                                                color: AppColors.redColor,
                                              ),
                                            )
                                          else
                                            GestureDetector(
                                              onTap: () => ref
                                                  .read(eventsProvider.notifier)
                                                  .toggleEventFavourite(
                                                      eventId),
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
                              Container(
                                decoration: BoxDecoration(
                                  color: Color(0xFFDDDDDD),
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: SizedBox(
                                  width: 157.7,
                                  child: Container(
                                    padding:
                                        EdgeInsets.fromLTRB(6.3, 5, 0, 5.1),
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
                                        if (event.popular == true)
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin:
                                              EdgeInsets.fromLTRB(0, 0, 0, 4),
                                          child: Text(
                                            event.name,
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
                                    Container(
                                      height: 135,
                                      width: 95.19,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: AssetImage(
                                            'assets/images/all_event_image_4.jpeg',
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.fromLTRB(0, 0, 0, 8),
                                        child: Text(
                                          formatDateWordMonthWordDayYear(
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                    onTap: () => Navigator.pushNamed(
                                        context, "/ChatScreen", arguments: {
                                      "selectedIndex": 0,
                                      "chatId": 1
                                    }),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin:
                                              EdgeInsets.fromLTRB(0, 0, 0, 8),
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
                                onTap: () => Navigator.pushNamed(
                                    context, '/CommunityScreen'),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.fromLTRB(0, 0, 13, 0),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(14),
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: AssetImage(
                                            'assets/images/creator_profile.png',
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
                                      child: Container(
                                        width: 28,
                                        height: 28,
                                      ),
                                    ),
                                    Text(
                                      'Zurich Together',
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
                                    "See above  for all scheduled Harry Styles concert dates and click “favourite” at the top of the page to get Harry Styles your updates and discover similar events. Most concerts last about 2-3 hours but can run shorter or longer depending on the harry Styles, opening acts, encore, etc. Harry Styles concerts typically last 2 hours.",
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
                                'Organizer (${event.organizers.length + 1})',
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
                                organizer: event.owner,
                                isOwner: true,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  for (var organizer in event.organizers)
                                    EventScreenOrganizer(
                                      organizer: organizer,
                                      isOwner: false,
                                    ),
                                  SizedBox(
                                    height: 16,
                                  ),
                                ],
                              ),
                              if (ref.read(appUserProvider).asData?.value.id ==
                                  event.owner.id)
                                EventScreenAddOrganizer(),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Assistents (23)',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      color: Color(0xFF000000),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 16,
                                  ),
                                  Container(
                                    height: 40,
                                    child: Stack(
                                      children: [
                                        for (int i = 0; i < 4; i++)
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
                                                  image: AssetImage(
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
                                    Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: 125,
                                            height: 222.2,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                fit: BoxFit.cover,
                                                image: AssetImage(
                                                  'assets/images/event_photos_1.png',
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 12,
                                          ),
                                          SizedBox(
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
                                                        color:
                                                            Color(0xFF1B1A1D),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height: 6,
                                                    ),
                                                    Container(
                                                      width: 21,
                                                      height: 19,
                                                      child: SizedBox(
                                                        width: 21,
                                                        height: 19,
                                                        child: SvgPicture.asset(
                                                          'assets/vectors/vector_42_x2.svg',
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                )),
                                          ),
                                        ])
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
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                          'assets/images/add_comment_profile_image.png',
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 24,
                                  ),
                                  GestureDetector(
                                    onTap: () => Navigator.pushNamed(
                                        context, '/AddCommentScreen'),
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
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 28,
                                    height: 28,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(14),
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                          'assets/images/event_comment_profile_image_1.png',
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 24,
                                  ),
                                  Expanded(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        RichText(
                                          text: TextSpan(
                                            text: 'Salvo',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14,
                                              color: Color(0xFF000000),
                                            ),
                                            children: [
                                              TextSpan(
                                                text: ' ',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 14,
                                                  height: 1.3,
                                                ),
                                              ),
                                              TextSpan(
                                                text: '· vie, 19 abr, 21:23',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 14,
                                                  height: 1.3,
                                                  color: Color(0xFFC1C1CB),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 6,
                                        ),
                                        Text(
                                          'Some of us are being rejected at the entrance, apparently there is a private event here. Can the organizers show up?',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14,
                                            color: Color(0xFF000000),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 6,
                                        ),
                                        SizedBox(
                                          width: 135.2,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                children: [
                                                  Container(
                                                    width: 15.8,
                                                    height: 13.8,
                                                    child: SizedBox(
                                                      width: 15.8,
                                                      height: 13.8,
                                                      child: SvgPicture.asset(
                                                        'assets/vectors/vector_18_x2.svg',
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 6,
                                                  ),
                                                  Container(
                                                    child: Text(
                                                      '1 Like',
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontSize: 12,
                                                        color:
                                                            Color(0xFF000000),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Container(
                                                width: 16.6,
                                                height: 12.8,
                                                child: SizedBox(
                                                  width: 16.6,
                                                  height: 12.8,
                                                  child: SvgPicture.asset(
                                                    'assets/vectors/vector_40_x2.svg',
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                width: 14.5,
                                                height: 3,
                                                child: SizedBox(
                                                  width: 14.5,
                                                  height: 3,
                                                  child: SvgPicture.asset(
                                                    'assets/vectors/vector_28_x2.svg',
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(14),
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                          'assets/images/event_comment_profile_image.png',
                                        ),
                                      ),
                                    ),
                                    child: Container(
                                      width: 28,
                                      height: 28,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 24,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      RichText(
                                        text: TextSpan(
                                          text: 'Laura',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14,
                                            color: Color(0xFF000000),
                                          ),
                                          children: [
                                            TextSpan(
                                              text: ' ',
                                              style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 14,
                                                height: 1.3,
                                              ),
                                            ),
                                            TextSpan(
                                              text: '· vie, 19 abr, 21:23',
                                              style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 14,
                                                height: 1.3,
                                                color: Color(0xFFC1C1CB),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 6,
                                      ),
                                      Text(
                                        'yeahh!!',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14,
                                          color: Color(0xFF000000),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 6,
                                      ),
                                      SizedBox(
                                        width: 91.2,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                Container(
                                                  width: 15.8,
                                                  height: 13.8,
                                                  child: SizedBox(
                                                    width: 15.8,
                                                    height: 13.8,
                                                    child: SvgPicture.asset(
                                                      'assets/vectors/vector_69_x2.svg',
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 6,
                                                ),
                                                Container(
                                                  child: Text(
                                                    '1 Like',
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 12,
                                                      color: Color(0xFF000000),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Container(
                                              margin: EdgeInsets.fromLTRB(
                                                  0, 5.9, 0, 5.5),
                                              width: 14.5,
                                              height: 3,
                                              child: SizedBox(
                                                width: 14.5,
                                                height: 3,
                                                child: SvgPicture.asset(
                                                  'assets/vectors/vector_26_x2.svg',
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 32,
                              ),
                              Container(
                                height: 1,
                                decoration: BoxDecoration(
                                  color: Color(0xFF000000),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                'Report this event',
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18,
                                  color: Color(0xFF3F8DFD),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                height: 1,
                                decoration: BoxDecoration(
                                  color: Color(0xFF000000),
                                ),
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
                            top: BorderSide(
                                color: AppColors.blackColor, width: 1))),
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
