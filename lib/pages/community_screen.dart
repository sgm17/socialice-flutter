import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:socialice/app_colors.dart';
import 'package:socialice/awidgets/arrow_back.dart';
import 'package:socialice/utils.dart';

class CommunityScreen extends StatefulWidget {
  const CommunityScreen({Key? key}) : super(key: key);

  @override
  State<CommunityScreen> createState() => _CommunityScreenState();
}

class _CommunityScreenState extends State<CommunityScreen> {
  bool expandText = false;
  bool programmedEvents = true;

  void handleExpandText() {
    setState(() {
      expandText = !expandText;
    });
  }

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
                    ArrowBack(),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 16.7,
                          height: 22.6,
                          child: SvgPicture.asset(
                            'assets/vectors/vector_61_x2.svg',
                          ),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        SizedBox(
                          width: 4,
                          height: 16,
                          child: SvgPicture.asset(
                            'assets/vectors/vector_38_x2.svg',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 32.0,
                ),
                Container(
                  height: 190,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        'assets/images/event_group_picture.png',
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 32.0,
                ),
                Text(
                  'Social 7 Club - Zürich',
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 26,
                    color: Color(0xFF1B1A1D),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                CommunityMembers(),
                SizedBox(
                  height: 16.0,
                ),
                Text(
                  '714 Zurich Together Members',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: AppColors.blackColor,
                  ),
                ),
                SizedBox(
                  height: 4,
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
                    ),
                    SizedBox(
                      width: 13.0,
                    ),
                    Container(
                      child: Text(
                        'Zurich Together',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                          color: AppColors.blackColor,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 23.0,
                ),
                Container(
                  height: 1,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF1B1A1D),
                    ),
                  ),
                ),
                SizedBox(
                  height: 6.0,
                ),
                if (!expandText)
                  GestureDetector(
                    onTap: () => handleExpandText(),
                    child: Center(
                      child: Container(
                        height: 24,
                        width: 24,
                        child: SizedBox(
                          width: 11.3,
                          height: 6.7,
                          child: SvgPicture.asset(
                            'assets/vectors/vector_34_x2.svg',
                          ),
                        ),
                      ),
                    ),
                  )
                else
                  Column(
                    children: [
                      SizedBox(
                        height: 16.0,
                      ),
                      Text(
                        "Welcome to Social 7 Club! The mission is simple, to meet people, make friends, and turn every event into sumething unforgettable. We’re not just a community; we’re an attitude. No formalities, just good vibes, genuine friendships and experiences worth having. Don’t hesitate to come alone. When you sign up, you’ll automatically receive a link to a WhatsApp gorup chat. This way, you can chat with people or even arrange to meet up beforehand to ease any nerves about coming alone :) Joinus and discover the magic of meaningful connections. Your next adventure starts here, Laura <3",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: AppColors.blackColor,
                        ),
                      ),
                      SizedBox(
                        height: 32.0,
                      ),
                      Container(
                        height: 1,
                        decoration: BoxDecoration(
                          color: AppColors.blackColor,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () => Navigator.pushNamed(
                                context, '/UserProfileScreen'),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 18.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                          'assets/images/event_group_picture.png',
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Organized by',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 18,
                                          color: Color(0xFF000000),
                                        ),
                                      ),
                                      Text(
                                        'Laura Nardella',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 18,
                                          color: Color(0xFF000000),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () => Navigator.pushNamed(
                                context, '/PrivateChatScreen'),
                            child: SizedBox(
                              width: 22.2,
                              height: 21.6,
                              child: SvgPicture.asset(
                                'assets/vectors/vector_15_x2.svg',
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 1,
                        decoration: BoxDecoration(
                          color: Color(0xFF000000),
                        ),
                      ),
                    ],
                  ),
                SizedBox(
                  height: 10,
                ),
                if (expandText)
                  GestureDetector(
                    onTap: () => handleExpandText(),
                    child: Center(
                      child: Container(
                        height: 24.0,
                        width: 24.0,
                        child: SizedBox(
                          width: 11.3,
                          height: 6.7,
                          child: SvgPicture.asset(
                            'assets/vectors/vector_63_x2.svg',
                          ),
                        ),
                      ),
                    ),
                  ),
                SizedBox(
                  height: 32.0,
                ),
                Text(
                  'Eventos',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 23,
                    color: Color(0xFF000000),
                  ),
                ),
                SizedBox(
                  height: 16.0,
                ),
                if (!programmedEvents)
                  Container(
                    height: 226,
                    padding: EdgeInsets.symmetric(horizontal: 36),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: AppColors.blackColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      'En cuanto se programe algún evento, aparecerá aquí',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        color: AppColors.whiteColor,
                      ),
                    ),
                  )
                else
                  SizedBox(height: 226, child: CommunityEvents()),
                SizedBox(
                  height: 32.0,
                ),
                Center(
                  child: Text(
                    'See all the events',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      color: Color(0xFF3F8DFD),
                    ),
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
                  height: 32.0,
                ),
                Text(
                  'Momentos destacados',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 23,
                    color: Color(0xFF000000),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                    onTap: () => Navigator.pushNamed(
                        context, '/HighlightedMomentsScreen'),
                    child: CommunitySingleHighlightedEvent()),
                SizedBox(
                  height: 32,
                ),
                GestureDetector(
                    onTap: () => Navigator.pushNamed(
                        context, '/HighlightedMomentsScreen'),
                    child: CommunityDoubleHighlightedEvent()),
                SizedBox(
                  height: 32,
                ),
                GestureDetector(
                    onTap: () => Navigator.pushNamed(
                        context, '/HighlightedMomentsScreen'),
                    child: CommunityMultipleHighlightedEvent()),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget CommunityMembers() {
    List<Widget> elements = [];

    for (var i = 0; i < 8; i++) {
      elements.add(
        Row(
          children: [
            Container(
              width: 37,
              height: 37,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18.5),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'assets/images/community_profile_1.png',
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 6.0,
            )
          ],
        ),
      );
    }

    return Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: elements);
  }
}

class CommunityMultipleHighlightedEvent extends StatelessWidget {
  const CommunityMultipleHighlightedEvent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.bottomLeft,
                padding: EdgeInsets.fromLTRB(20, 0, 0, 20),
                height: 183,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'assets/images/highlighted_moment_31_image.png',
                    ),
                  ),
                ),
                child: Container(
                    alignment: Alignment.center,
                    width: 48,
                    height: 36,
                    decoration: BoxDecoration(
                      color: AppColors.blackColor,
                    ),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 20.5,
                            height: 13,
                            child: SvgPicture.asset(
                              'assets/vectors/vector_65_x2.svg',
                            ),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            '8',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                              color: Color(0xFFFFFFFF),
                            ),
                          )
                        ])),
              ),
            ),
            SizedBox(
              width: 9,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 87,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          'assets/images/highlighted_moment_32_image.png',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 9,
                  ),
                  Container(
                    height: 87,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          'assets/images/highlighted_moment_32_image.png',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 16,
        ),
        Text(
          'Pub Quiz',
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 18,
            color: Color(0xFF000000),
          ),
        ),
        SizedBox(
          height: 3,
        ),
        Text(
          '24 abr',
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 18,
            color: Color(0xFFC1C1CB),
          ),
        ),
      ],
    );
  }
}

class CommunityDoubleHighlightedEvent extends StatelessWidget {
  const CommunityDoubleHighlightedEvent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.bottomLeft,
                padding: EdgeInsets.fromLTRB(20, 0, 0, 20),
                height: 183,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'assets/images/highlighted_moment_31_image.png',
                    ),
                  ),
                ),
                child: Container(
                  alignment: Alignment.center,
                  width: 48,
                  height: 36,
                  decoration: BoxDecoration(
                    color: AppColors.blackColor,
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 20.5,
                          height: 13,
                          child: SvgPicture.asset(
                            'assets/vectors/vector_65_x2.svg',
                          ),
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Text(
                          '1',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                            color: Color(0xFFFFFFFF),
                          ),
                        )
                      ]),
                ),
              ),
            ),
            SizedBox(
              width: 9,
            ),
            Expanded(
              child: Container(
                  height: 183,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        'assets/images/highlighted_moment_32_image.png',
                      ),
                    ),
                  )),
            ),
          ],
        ),
        SizedBox(
          height: 16,
        ),
        Text(
          'Pub Quiz',
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 18,
            color: Color(0xFF000000),
          ),
        ),
        SizedBox(
          height: 3,
        ),
        Text(
          '24 abr',
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 18,
            color: Color(0xFFC1C1CB),
          ),
        ),
      ],
    );
  }
}

class CommunitySingleHighlightedEvent extends StatelessWidget {
  const CommunitySingleHighlightedEvent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          alignment: Alignment.bottomLeft,
          padding: EdgeInsets.fromLTRB(20, 0, 0, 20),
          height: 183,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                'assets/images/highlighted_moment_1_image.png',
              ),
            ),
          ),
          child: Container(
            alignment: Alignment.center,
            width: 48,
            height: 36,
            decoration: BoxDecoration(
              color: AppColors.blackColor,
            ),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 20.5,
                    height: 13,
                    child: SvgPicture.asset(
                      'assets/vectors/vector_65_x2.svg',
                    ),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    '1',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      color: Color(0xFFFFFFFF),
                    ),
                  )
                ]),
          ),
        ),
        SizedBox(
          height: 16,
        ),
        Text(
          'Exquisite Together - Marktküche Tasting Dinner (Limited Capacity)',
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 18,
            color: Color(0xFF000000),
          ),
        ),
        SizedBox(
          height: 3,
        ),
        Text(
          'Hace 7 días',
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 18,
            color: Color(0xFFC1C1CB),
          ),
        ),
      ],
    );
  }
}

class CommunityEvents extends StatelessWidget {
  const CommunityEvents({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          width: 259,
          height: 226,
          decoration: BoxDecoration(
            color: AppColors.blackColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Free Trial Salsa Bachata Class',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 25,
                  color: Color(0xFFFFFFFF),
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Today, 19:00',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Color(0xFFFFFFFF),
                ),
              ),
            ],
          ),
        );
      },
      itemCount: 5,
      separatorBuilder: (BuildContext context, int index) {
        return SizedBox(
          width: 16,
        );
      },
    );
  }
}
