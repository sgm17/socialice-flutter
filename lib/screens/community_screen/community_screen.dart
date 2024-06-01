import 'package:socialice/domains/event_repository/src/models/event_model.dart';
import 'package:socialice/providers/app_provider/bottom_navigation_provider.dart';
import 'package:socialice/providers/app_user_provider/app_user_provider.dart';
import 'package:socialice/providers/community_provider/communities_provider.dart';
import 'package:socialice/providers/event_provider/events_provider.dart';
import 'package:socialice/screens/community_screen/widgets/community_double_highlighted_event.dart';
import 'package:socialice/screens/community_screen/widgets/community_members.dart';
import 'package:socialice/screens/community_screen/widgets/community_multiple_highlighted_event.dart';
import 'package:socialice/screens/community_screen/widgets/community_single_highlighted_event.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:socialice/constants/app_colors.dart';
import 'package:socialice/widgets/arrow_back.dart';
import 'package:socialice/utils/date_parser.dart';
import 'package:flutter/material.dart';

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

    final String communityId = args['communityId'];

    final communities = ref.watch(communitiesProvider).asData!.value;
    final events = ref.watch(eventsProvider).asData!.value;
    final user = ref.watch(appUserProvider).asData!.value;

    final community = communities.where((e) => e.id == communityId).first;

    final futureEvents = EventModel.getFutureEvents(
        events.where((e) => e.community.id == community.id).toList());

    final highlightMoments = events
        .where((e) => e.community.id == communityId)
        .map((e) => e.highlights)
        .where((highlights) => highlights != null && highlights.isNotEmpty)
        .toList();

    Future<void> _handleCreateEvent() async {
      final event = await Navigator.pushNamed(context, "/CreateEventScreen");
      if (event is EventModel? && event != null) {
        //TODO
      }
    }

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 32,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    ArrowBack(),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        if (user.id == community.owner.id)
                          GestureDetector(
                            onTap: _handleCreateEvent,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.add,
                                  size: 28,
                                ),
                                SizedBox(
                                  width: 16,
                                ),
                              ],
                            ),
                          ),
                        Icon(
                          Icons.ios_share_rounded,
                          size: 28,
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Icon(
                          Icons.more_vert,
                          size: 28,
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
                      image: NetworkImage(
                        community.image,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 32.0,
                ),
                Text(
                  '${community.name} - ${community.city}',
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 26,
                    color: Color(0xFF1B1A1D),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                if (community.members!.isEmpty)
                  Container(
                    alignment: Alignment.center,
                    width: 37,
                    height: 37,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18.5),
                        border: Border.all(color: AppColors.blackColor)),
                    child: Icon(
                      Icons.no_accounts_outlined,
                      size: 18,
                    ),
                  )
                else
                  CommunityMembers(
                    members: community.members!,
                  ),
                SizedBox(
                  height: 16.0,
                ),
                Text(
                  "${community.members!.length} ${community.name} Members",
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
                          image: NetworkImage(
                            community.image,
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
                        community.name,
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
                      child: Icon(
                        Icons.expand_more_rounded,
                        size: 40,
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
                        community.description,
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
                      GestureDetector(
                        onTap: () {
                          if (user.id != community.owner.id) {
                            Navigator.pushNamed(context, '/UserProfileScreen',
                                arguments: {"userId": community.owner.id});
                          }
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border(
                                  top: BorderSide(
                                    color: AppColors.blackColor,
                                  ),
                                  bottom:
                                      BorderSide(color: AppColors.blackColor))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
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
                                        image: community.owner.profileImage ==
                                                null
                                            ? DecorationImage(
                                                fit: BoxFit.cover,
                                                image: AssetImage(
                                                  "assets/images/default_avatar.png",
                                                ))
                                            : DecorationImage(
                                                fit: BoxFit.cover,
                                                image: NetworkImage(
                                                  community.owner.profileImage!,
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
                                          "${community.owner.name} ${community.owner.surname}",
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
                                child: Icon(
                                  Icons.chat_bubble_outline_rounded,
                                  size: 28,
                                ),
                              ),
                            ],
                          ),
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
                        child: Icon(
                      Icons.expand_less_rounded,
                      size: 40,
                    )),
                  ),
                SizedBox(
                  height: 32.0,
                ),
                Text(
                  'Events',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 23,
                    color: Color(0xFF000000),
                  ),
                ),
                SizedBox(
                  height: 16.0,
                ),
                if (community.owner.id == user.id && futureEvents.isEmpty)
                  GestureDetector(
                    onTap: _handleCreateEvent,
                    child: Container(
                      height: 226,
                      padding: EdgeInsets.symmetric(horizontal: 36),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: AppColors.blackColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Your communtiy still has no events. Create an event and start bringing preople together',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                              color: AppColors.whiteColor,
                            ),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Icon(
                            Icons.edit_calendar_rounded,
                            size: 40,
                            color: AppColors.whiteColor,
                          )
                        ],
                      ),
                    ),
                  )
                else if (futureEvents.isEmpty)
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
                  SizedBox(
                      height: 226,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          return GestureDetector(
                            onTap: () => Navigator.pushNamed(
                                context, "/EventScreen",
                                arguments: {"eventId": events[index].id}),
                            child: Container(
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
                                    events[index].name,
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
                                    formatDayWordTime(
                                        events[index].startTimestamp),
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                      color: Color(0xFFFFFFFF),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                        itemCount: events.length,
                        separatorBuilder: (BuildContext context, int index) {
                          return SizedBox(
                            width: 16,
                          );
                        },
                      )),
                SizedBox(
                  height: 32.0,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, "/AllEventsScreen");
                  },
                  child: Center(
                    child: Text(
                      'See all the events',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        color: Color(0xFF3F8DFD),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                if (highlightMoments.isNotEmpty)
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 32),
                    decoration: BoxDecoration(
                        border: Border(
                            top: BorderSide(color: AppColors.blackColor))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Highlighted Moments',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 23,
                            color: Color(0xFF000000),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            for (int i = 0; i < 1; i++)
                              if (highlightMoments[i]!.length == 1)
                                GestureDetector(
                                    onTap: () => Navigator.pushNamed(
                                            context, '/HighlightedMomentsScreen', arguments: {
                                          "eventId":
                                              highlightMoments[i]!.first.eventId
                                        }),
                                    child: CommunitySingleHighlightedEvent(
                                      highlight: highlightMoments[i]![0],
                                    ))
                              else if (highlightMoments[i]!.length == 2)
                                GestureDetector(
                                    onTap: () => Navigator.pushNamed(
                                        context, '/HighlightedMomentsScreen',
                                        arguments: {"eventId": highlightMoments[i]!.first.eventId}),
                                    child: CommunityDoubleHighlightedEvent(
                                      highlights: highlightMoments[i]!,
                                    ))
                              else
                                GestureDetector(
                                    onTap: () => Navigator.pushNamed(
                                            context, '/HighlightedMomentsScreen',
                                            arguments: {
                                              "eventId": highlightMoments[i]!
                                                  .first
                                                  .eventId
                                            }),
                                    child: CommunityMultipleHighlightedEvent(
                                      highlights: highlightMoments[i]!,
                                    ))
                          ],
                        ),
                      ],
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
