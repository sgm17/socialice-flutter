import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:socialice/constants/app_colors.dart';
import 'package:socialice/domains/event_repository/src/models/event_model.dart';
import 'package:socialice/providers/app_user_provider/app_user_provider.dart';
import 'package:socialice/providers/community_provider/communities_provider.dart';
import 'package:socialice/providers/event_provider/events_provider.dart';
import 'package:socialice/providers/interests_provider/interests_future_provider.dart';
import 'package:socialice/screens/home_screen/widgets/empty_communities.dart';
import 'package:socialice/widgets/event_crozy.dart';
import 'package:socialice/widgets/event_headline.dart';
import 'package:socialice/widgets/search_event_name.dart';
import 'package:socialice/widgets/skelton.dart';
import 'package:socialice/widgets/user_interest.dart';
import 'package:socialice/screens/home_screen/widgets/past_event_item.dart';
import 'package:socialice/screens/home_screen/widgets/your_group.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  final _focusNode = FocusNode();

  @override
  void initState() {
    // navigate event when the searcher gets tapped
    _focusNode.addListener(discoverGroupsFocusCallback);
    super.initState();
  }

  void discoverGroupsFocusCallback() {
    Navigator.pushNamedAndRemoveUntil(
        context, '/DiscoverGroupsScreen', ModalRoute.withName('/AppScreen'));
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final eventsState = ref.watch(eventsProvider);
    final appUserState = ref.watch(appUserProvider);
    final communitiesState = ref.watch(communitiesProvider);
    final interestsState = ref.watch(interestsFutureProvider);

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
                      SizedBox(
                        height: 32,
                      ),
                      Text(
                        'Welcome back!',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 28,
                          color: Color(0xFF1B1A1D),
                        ),
                      ),
                      appUserState.when(
                          data: (appUser) => Text(
                                "${appUser.name} ${appUser.surname}",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 22,
                                  color: Color(0xFFC1C1CB),
                                ),
                              ),
                          loading: () => Skelton(
                              height: 30,
                              width: 200,
                              borderRadius: 8,
                              isProfileImage: false),
                          error: (Object error, StackTrace stackTrace) =>
                              SizedBox.shrink()),
                    ],
                  ),
                  appUserState.when(
                    data: (appUser) {
                      return GestureDetector(
                        onTap: () =>
                            // push the navigator to the profile screen
                            Navigator.pushNamed(context, "/MyProfileScreen"),
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
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
                      );
                    },
                    loading: () => Skelton(
                        height: 40,
                        width: 40,
                        borderRadius: 0,
                        isProfileImage: true),
                    error: (error, stackTrace) => SizedBox.shrink(),
                  ),
                ],
              ),
              SizedBox(
                height: 24,
              ),
              SearchEventName(
                focusNode: _focusNode,
              ),
              eventsState.when(
                data: (events) {
                  // get just the future events
                  final futureEvents = EventModel.getFutureEvents(events);
                  // get just the popular events
                  final popularEvent =
                      futureEvents.where((e) => e.popular == true);

                  if (popularEvent.isEmpty)
                    // there is no popular event
                    return SizedBox.shrink();
                  else
                    // there is at least one popular event
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
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
                        // display just the first popular event
                        EventHeadline(eventHeadline: popularEvent.first),
                      ],
                    );
                },
                loading: () => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 24,
                    ),
                    Skelton(height: 42, borderRadius: 6, isProfileImage: false),
                    SizedBox(
                      height: 16,
                    ),
                    Skelton(
                        height: 203, borderRadius: 10, isProfileImage: false),
                    SizedBox(
                      height: 16,
                    ),
                    Skelton(height: 40, borderRadius: 8, isProfileImage: false),
                  ],
                ),
                error: (error, stackTrace) => SizedBox.shrink(),
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
              eventsState.when(
                data: (events) {
                  // get all the events
                  final futureEvents = EventModel.getFutureEvents(events);
                  // get just the non popular events
                  final allEvents =
                      futureEvents.where((e) => e.popular != true).toList();

                  if (allEvents.isEmpty)
                    // there are no future events that are not popular
                    return Container(
                      alignment: Alignment.center,
                      height: 250.8,
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: Color(0xFFC1C1CB), width: 1)),
                      child: Text(
                        'As soon as an event is scheduled, it will appear here',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          color: AppColors.blackColor,
                        ),
                      ),
                    );
                  else
                    // there are future events that are not popular
                    return Row(
                      children: [
                        // always there is going to be at least one event
                        Expanded(
                          child: EventCrozy(event: allEvents[0]),
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        // in case that there are two items in the list
                        Expanded(
                          child: allEvents.length >= 2
                              ? EventCrozy(event: allEvents[1])
                              : SizedBox(),
                        ),
                      ],
                    );
                },
                loading: () {
                  return Row(
                    children: [
                      Expanded(
                          child: Skelton(
                              height: 250.8,
                              borderRadius: 10,
                              isProfileImage: false)),
                      SizedBox(
                        width: 7,
                      ),
                      Expanded(
                          child: Skelton(
                              height: 250.8,
                              borderRadius: 10,
                              isProfileImage: false)),
                    ],
                  );
                },
                error: (error, stackTrace) => SizedBox.shrink(),
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
              communitiesState.when(
                data: (c) {
                  final user = appUserState.value;
                  final communities = c
                      .where(
                          (e) => e.members!.map((e) => e.id).contains(user!.id))
                      .toList();

                  if (communities.isEmpty)
                    // nobody has created a community yet
                    return GestureDetector(
                        onTap: () =>
                            Navigator.pushNamed(context, '/AllGroupsScreen'),
                        child: EmptyCommunities());
                  else
                    return SizedBox(
                      height: 150,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemCount: communities.length,
                        itemBuilder: (context, index) {
                          final community = communities[index];
                          return GestureDetector(
                            onTap: () => Navigator.pushNamed(
                                context, '/CommunityScreen',
                                arguments: {'communityId': community.id}),
                            child: YourGroup(community: community),
                          );
                        },
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            width: 16,
                          );
                        },
                      ),
                    );
                },
                loading: () => Skelton(
                    height: 150, borderRadius: 8, isProfileImage: false),
                error: (error, stackTrace) => SizedBox.shrink(),
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
              appUserState.when(
                data: (appUser) {
                  final selectedInterests = appUser.interests;

                  if (selectedInterests!.isNotEmpty) {
                    final elements = selectedInterests.length >= 2
                        ? selectedInterests.sublist(0, 2)
                        : selectedInterests;

                    return Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          for (int i = 0; i < elements.length; i++)
                            Padding(
                              padding: i != elements.length - 1
                                  ? const EdgeInsets.only(right: 10.0)
                                  : EdgeInsets.zero,
                              child: UserInterest(
                                interest: elements[i],
                                selected: true,
                              ),
                            ),
                        ]);
                  } else
                    return interestsState.when(
                      data: (interests) => Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          UserInterest(
                            interest: interests[0],
                            selected: false,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          UserInterest(
                            interest: interests[1],
                            selected: false,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          UserInterest(
                            interest: interests[2],
                            selected: false,
                          ),
                        ],
                      ),
                      error: (error, stackTrace) => SizedBox.shrink(),
                      loading: () => Skelton(
                          height: 30, borderRadius: 6, isProfileImage: false),
                    );
                },
                loading: () => Skelton(
                    height: 35, borderRadius: 10, isProfileImage: false),
                error: (error, stackTrace) => SizedBox.shrink(),
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
              appUserState.when(
                data: (appUser) {
                  // it does not matter if the events are popular or not
                  final pastEvents = EventModel.getPastEvents(appUser.events!);

                  if (pastEvents.isEmpty)
                    // there are no past events yet
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.calendar_month_rounded),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "You haven't joined an event yet",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                            color: Color(0xFF1B1A1D),
                          ),
                        ),
                      ],
                    );
                  else
                    return Column(
                      children: [
                        for (int i = 0; i < pastEvents.length; i++)
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              PastEventItem(event: pastEvents[i]),
                              if (i != pastEvents.length - 1)
                                // check that the index is not the last one
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 16.0),
                                  child: Container(
                                    height: 1,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF1B1A1D),
                                    ),
                                  ),
                                )
                            ],
                          )
                      ],
                    );
                },
                loading: () => Skelton(
                    height: 164, borderRadius: 10, isProfileImage: false),
                error: (error, stackTrace) => SizedBox.shrink(),
              ),
              SizedBox(
                height: 48,
              )
            ],
          )),
    )));
  }
}
