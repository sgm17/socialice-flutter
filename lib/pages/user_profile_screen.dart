import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:socialice/app_colors.dart';
import 'package:socialice/awidgets/arrow_back.dart';
import 'package:socialice/awidgets/profile_member_group.dart';
import 'package:socialice/awidgets/profile_organizer_group.dart';
import 'package:socialice/utils.dart';

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({Key? key}) : super(key: key);

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
              child: ArrowBack(
                color: AppColors.whiteColor,
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
          ),
        ],
      ),
    );
  }
}
