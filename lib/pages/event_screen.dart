import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:socialice/app_colors.dart';
import 'package:socialice/awidgets/arrow_back.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:socialice/awidgets/black_container_button.dart';

class EventScreen extends StatelessWidget {
  const EventScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isOrganizer = true;
    bool eventFinished = true;
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
                        image: AssetImage(
                          'assets/images/all_events_popular_image_2.png',
                        ),
                      ),
                    ),
                  ),
                ),
                if (eventFinished)
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
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      width: 23.6,
                                      height: 20.7,
                                      child: SizedBox(
                                        width: 23.6,
                                        height: 20.7,
                                        child: SvgPicture.asset(
                                          'assets/vectors/vector_12_x2.svg',
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      width: 16.7,
                                      height: 22.6,
                                      child: SizedBox(
                                        width: 16.7,
                                        height: 22.6,
                                        child: SvgPicture.asset(
                                          'assets/vectors/vector_62_x2.svg',
                                        ),
                                      ),
                                    ),
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
                              padding: EdgeInsets.fromLTRB(6.3, 5, 0, 5.1),
                              child: Row(
                                children: [
                                  Container(
                                    margin:
                                        EdgeInsets.fromLTRB(0, 0.5, 16.3, 0.5),
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
                                    'Evento destacado',
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
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 0, 0, 4),
                                    child: Text(
                                      'HS : Love On Tour',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 23,
                                        color: Color(0xFF000000),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      'Jakarta International Studio',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                        color: AppColors.greyLightColor,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    '11 Jun 2022',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 10,
                                      color: AppColors.greyLightColor,
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
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 0, 8),
                                  child: Text(
                                    'jueves, abril 25, 2024',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 18,
                                      color: Color(0xFF000000),
                                    ),
                                  ),
                                ),
                                Text(
                                  '18:30 - 20:30 CEST',
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
                                    'The Alehouse - Palmhof',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 18,
                                      color: Color(0xFF000000),
                                    ),
                                  ),
                                ),
                                Text(
                                  'Universitätstrasse 23, 8001 Zürich, ch',
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
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 0, 8),
                                  child: Text(
                                    'Chat del evento',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 18,
                                      color: Color(0xFF000000),
                                    ),
                                  ),
                                ),
                                Text(
                                  'Sigue en contacto para este evento',
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
                          'Organizer (2)',
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
                          creatorID: 2,
                          myID: 1,
                          index: 0,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        EventScreenOrganizer(
                          creatorID: 2,
                          myID: 1,
                          index: 1,
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        if (isOrganizer) EventScreenAddOrganizer(),
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                                  color: Color(0xFFC1C1CB))),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                'Add a photo',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 16,
                                                  color: Color(0xFF1B1A1D),
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
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
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
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 12,
                                                  color: Color(0xFF000000),
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
                              crossAxisAlignment: CrossAxisAlignment.start,
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
                                                fontWeight: FontWeight.w400,
                                                fontSize: 12,
                                                color: Color(0xFF000000),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        margin:
                                            EdgeInsets.fromLTRB(0, 5.9, 0, 5.5),
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
              color: AppColors.greyLightColor,
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
                      Text(
                        '15 CHF',
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

class EventScreenAddOrganizer extends StatelessWidget {
  const EventScreenAddOrganizer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(0, 0, 14, 0),
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xFFDDDDDD),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Container(
              alignment: Alignment.center,
              width: 40,
              height: 40,
              child: Container(
                height: 13,
                child: SizedBox(
                  height: 13,
                  child: SvgPicture.asset(
                    'assets/vectors/vector_67_x2.svg',
                  ),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Name',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: AppColors.blackColor,
                ),
              ),
              SizedBox(
                child: TextField(
                  maxLength: 30,
                  textAlignVertical: TextAlignVertical.center,
                  decoration: InputDecoration(
                      counter: SizedBox.shrink(),
                      border: InputBorder.none,
                      isCollapsed: true,
                      hintText: '@username',
                      hintStyle: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w400,
                        color: AppColors.greyLightColor,
                      )),
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: AppColors.blackColor,
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

class EventScreenOrganizer extends StatelessWidget {
  const EventScreenOrganizer({
    super.key,
    required this.creatorID,
    required this.myID,
    required this.index,
  });

  final int creatorID;
  final int myID;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      confirmDismiss: handleConfirmDismiss,
      key: Key(index.toString()),
      background: Container(color: Color.fromRGBO(255, 83, 83, 1)),
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
                  'assets/images/event_assistent_4.png',
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
                'Sergi Garcia',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Color(0xFF000000),
                ),
              ),
              Text(
                '@sergigarciiaa',
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

class DetailLocationMap extends StatelessWidget {
  final List<double> geometry;

  const DetailLocationMap({Key? key, required this.geometry}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final latLng = LatLng(geometry[1], geometry[0]);

    return FlutterMap(
      options: MapOptions(
          center: latLng, zoom: 15.0, interactiveFlags: ~InteractiveFlag.all),
      children: [
        TileLayer(
          urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
          userAgentPackageName: 'com.invelex.platonic',
        ),
        MarkerLayer(markers: [
          Marker(
            point: latLng,
            child: Icon(
              Icons.location_on,
              color: Colors.red,
              size: 40.0,
            ),
          ),
        ])
      ],
    );
  }
}
