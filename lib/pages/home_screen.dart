import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:socialice/app_colors.dart';
import 'package:socialice/awidgets/black_container_button.dart';
import 'package:socialice/awidgets/event_crozy.dart';
import 'package:socialice/awidgets/event_headline.dart';
import 'package:socialice/awidgets/search_event_name.dart';
import 'package:socialice/awidgets/user_interest.dart';
import 'package:socialice/utils.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Welcome back!',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 28,
                              color: Color(0xFF1B1A1D),
                            ),
                          ),
                          Text(
                            'Rio Ananda',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 22,
                              color: Color(0xFFC1C1CB),
                            ),
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () =>
                            Navigator.pushNamed(context, "/MyProfileScreen"),
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                'assets/images/home_profile_image.png',
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  GestureDetector(
                      onTap: () =>
                          Navigator.pushNamed(context, '/DiscoverGroupsScreen'),
                      child: SearchEventName()),
                  SizedBox(
                    height: 24,
                  ),
                  Text(
                    'Popular Event',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      color: Color(0xFF1B1A1D),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  EventHeadline(
                    action: () => Navigator.pushNamed(context, "/EventScreen"),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Upcoming Events',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          color: Color(0xFF1B1A1D),
                        ),
                      ),
                      GestureDetector(
                        onTap: () =>
                            Navigator.pushNamed(context, '/AllEventsScreen'),
                        child: Text(
                          'See all',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: Color(0xFF3F8DFD),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: EventCrozy(
                        action: () =>
                            Navigator.pushNamed(context, '/EventScreen'),
                      )),
                      SizedBox(
                        width: 7,
                      ),
                      Expanded(
                          child: EventCrozy(
                        action: () =>
                            Navigator.pushNamed(context, '/EventScreen'),
                      )),
                    ],
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Your Groups',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          color: Color(0xFF1B1A1D),
                        ),
                      ),
                      GestureDetector(
                        onTap: () =>
                            Navigator.pushNamed(context, "/AllGroupsScreen"),
                        child: Text('See all',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: Color(0xFF3F8DFD),
                            )),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 150,
                        width: 110,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xFFC1C1CB)),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Join a group',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                color: Color(0xFF1B1A1D),
                              ),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Container(
                              width: 14.6,
                              height: 10.8,
                              child: SizedBox(
                                width: 14.6,
                                height: 10.8,
                                child: SvgPicture.asset(
                                  'assets/vectors/vector_59_x2.svg',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      GestureDetector(
                          onTap: () =>
                              Navigator.pushNamed(context, '/CommunityScreen'),
                          child: YourGroup()),
                    ],
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Your Interests',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          color: Color(0xFF1B1A1D),
                        ),
                      ),
                      GestureDetector(
                        onTap: () =>
                            Navigator.pushNamed(context, '/InterestsScreen'),
                        child: Text(
                          'Edit',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: Color(0xFF3F8DFD),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      UserInterest(
                        interestName: 'Vida social',
                        selected: true,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      UserInterest(
                        interestName: 'Póker',
                        selected: false,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Text(
                    'Past Events',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      color: Color(0xFF1B1A1D),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Column(
                    children: [
                      for (int i = 0; i < 5; i++)
                        Padding(
                          padding: const EdgeInsets.only(top: 16.0),
                          child: PastEventItem(
                            last: i == 4,
                          ),
                        )
                    ],
                  )
                ],
              )),
        ),
      ),
    );
  }
}

class YourGroup extends StatelessWidget {
  const YourGroup({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomLeft,
      padding: EdgeInsets.fromLTRB(7, 0, 0, 7),
      height: 150,
      width: 110,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            'assets/images/event_group_picture.png',
          ),
        ),
      ),
      child: Text(
        'Social 7 Club Zurich',
        style: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 16,
          color: Color(0xFFFFFFFF),
        ),
      ),
    );
  }
}

class PastEventItem extends StatelessWidget {
  const PastEventItem({
    super.key,
    required this.last,
  });

  final bool last;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'LUN, MAR 18 · 19:00',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Color(0xFFFFBC2F),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'Language Exchange',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Color(0xFF1B1A1D),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'Zurich Together',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Color(0xFF1B1A1D),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                        color: Color(0xFF12D732),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Container(
                        width: 8.9,
                        height: 6.2,
                        child: SizedBox(
                          width: 8.9,
                          height: 6.2,
                          child: SvgPicture.asset(
                            'assets/vectors/vector_53_x2.svg',
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      '30 participants',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: AppColors.greyDarkColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'assets/images/all_events_popular_image_2.png',
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
                width: 150,
                height: 84.3,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 12,
        ),
        BlackContainerButton(
          text: 'Add a photo',
          action: () => throw UnimplementedError(),
        ),
        SizedBox(
          height: 16,
        ),
        if (!last)
          Container(
            height: 1,
            decoration: BoxDecoration(
              color: Color(0xFF1B1A1D),
            ),
          ),
      ],
    );
  }
}
