import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:socialice/app_colors.dart';
import 'package:socialice/awidgets/arrow_back.dart';
import 'package:socialice/awidgets/profile_member_group.dart';
import 'package:socialice/awidgets/profile_organizer_group.dart';
import 'package:socialice/pages/user_profile_screen.dart';
import 'package:socialice/utils.dart';

class MyProfileScreen extends StatelessWidget {
  const MyProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
              left: 0,
              right: 0,
              top: 0,
              child: Container(
                  height: 222.03,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        'assets/images/profile_background_image.jpeg',
                      ),
                    ),
                  ))),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ArrowBack(
                    color: AppColors.whiteColor,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 1.3, 18.1, 1.3),
                        width: 21.3,
                        height: 21.3,
                        child: SizedBox(
                          width: 21.3,
                          height: 21.3,
                          child: SvgPicture.asset(
                            'assets/vectors/vector_4_x2.svg',
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () =>
                            Navigator.pushNamed(context, '/SettingsScreen'),
                        child: Container(
                          width: 22.5,
                          height: 23.8,
                          child: SizedBox(
                            width: 22.5,
                            height: 23.8,
                            child: SvgPicture.asset(
                              'assets/vectors/vector_8_x2.svg',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 179,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFFFFFFF),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 73,
                        ),
                        Center(
                          child: Container(
                            width: 110,
                            padding: EdgeInsets.symmetric(
                                horizontal: 11, vertical: 7),
                            decoration: BoxDecoration(
                              color: Color(0xFFE4F8ED),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 13.3,
                                  height: 13.3,
                                  child: SizedBox(
                                    width: 13.3,
                                    height: 13.3,
                                    child: SvgPicture.asset(
                                      'assets/vectors/vector_5_x2.svg',
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                Text(
                                  'Available',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    color: Color(0xFF1B8D5C),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Olivia Rhye',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 36,
                              color: Color(0xFF1B1A1D),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            '@oliviarhye · Zurich, Switzerland',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                              color: Color(0xFF1B1A1D),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          'I’m a Product Designer based in Melbourne, Australia. I pecialise in UX/UI design, brand strategy, and Webflow development.',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                            color: Color(0xFF1B1A1D),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          'Organizer (2)',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 25,
                            color: Color(0xFF1B1A1D),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        ProfileOrganizerGroup(),
                        SizedBox(
                          height: 16,
                        ),
                        ProfileInitializeGroup(),
                        SizedBox(
                          height: 32,
                        ),
                        Text(
                          'Member (3)',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 25,
                            color: Color(0xFF1B1A1D),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        ProfileMemberGroup(),
                        SizedBox(
                          height: 16,
                        ),
                        ProfileDiscoverGroup(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 86,
            left: 0,
            right: 0,
            child: SizedBox(
                height: 150,
                child: Center(
                  child: Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(75),
                      border: Border.all(color: AppColors.blackColor, width: 3),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          'assets/images/profile_image.png',
                        ),
                      ),
                    ),
                  ),
                )),
          )
        ],
      ),
    );
  }
}

class ProfileDiscoverGroup extends StatelessWidget {
  const ProfileDiscoverGroup({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 50,
          height: 50,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Color(0xFFDDDDDD),
            borderRadius: BorderRadius.circular(10),
          ),
          child: SizedBox(
            width: 16.9,
            height: 16.9,
            child: SvgPicture.asset(
              'assets/vectors/vector_20_x2.svg',
            ),
          ),
        ),
        SizedBox(
          width: 16,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Discover more groups',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 18,
                color: Color(0xFF1B1A1D),
              ),
            ),
            Text(
              'Search for your interests',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13,
                color: Color(0xFF1B1A1D),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class ProfileInitializeGroup extends StatelessWidget {
  const ProfileInitializeGroup({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          alignment: Alignment.center,
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: Color(0xFFDDDDDD),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Container(
            width: 22.3,
            height: 14.6,
            child: SizedBox(
              width: 22.3,
              height: 14.6,
              child: SvgPicture.asset(
                'assets/vectors/vector_21_x2.svg',
              ),
            ),
          ),
        ),
        SizedBox(
          width: 16,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Initialize a new group',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 18,
                color: Color(0xFF1B1A1D),
              ),
            ),
            Text(
              'Create a group for your community',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13,
                color: Color(0xFF1B1A1D),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
