import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:socialice/constants/app_colors.dart';
import 'package:socialice/models.dart';
import 'package:socialice/providers/community_provider/communities_provider.dart';
import 'package:socialice/widgets/arrow_back.dart';
import 'package:socialice/screens/community_screen/widgets/community_double_highlighted_event.dart';
import 'package:socialice/screens/community_screen/widgets/community_members.dart';
import 'package:socialice/screens/community_screen/widgets/community_multiple_highlighted_event.dart';
import 'package:socialice/screens/community_screen/widgets/community_single_highlighted_event.dart';

class CommunityScreen extends ConsumerStatefulWidget {
  CommunityScreen({super.key});

  @override
  ConsumerState<CommunityScreen> createState() => _CommunityScreenState();
}

class _CommunityScreenState extends ConsumerState<CommunityScreen> {
  bool expandText = false;

  void handleExpandText() {
    setState(() {
      expandText = !expandText;
    });
  }

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> args =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    final int communityId = args['communityId'];

    final communities = ref.watch(communitiesProvider).asData;

    final community =
        communities?.value.where((e) => e.id == communityId).firstOrNull;

    return Scaffold(
      body: community == null
          ? SizedBox.shrink()
          : SafeArea(
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
                              socialSevenClub.image,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 32.0,
                      ),
                      Text(
                        '${socialSevenClub.name} - ${socialSevenClub.city}',
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
                        "${socialSevenClub.totalMembers} ${socialSevenClub.name} Members",
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
                                  socialSevenClub.image,
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
                              socialSevenClub.name,
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
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
                              socialSevenClub.description,
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
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 18.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          height: 40,
                                          width: 40,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: AssetImage(
                                                socialSevenClub
                                                    .owner.profileImage,
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
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
                                              "${socialSevenClub.owner.name} ${socialSevenClub.owner.surname}",
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
                      if (community.futureEvents.isEmpty)
                        Container(
                          height: 226,
                          padding: EdgeInsets.symmetric(horizontal: 36),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: AppColors.blackColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                            'As soon as an event is scheduled, it will appear here',
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
