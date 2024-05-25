import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:socialice/domains/event_repository/src/models/event_model.dart';
import 'package:socialice/providers/app_user_provider/app_user_provider.dart';
import 'package:socialice/screens/events_screen/widgets/empty_joined_event.dart';
import 'package:socialice/screens/events_screen/widgets/joined_or_past_event.dart';
import 'package:socialice/screens/events_screen/widgets/create_first_event.dart';
import 'package:socialice/screens/events_screen/widgets/my_event.dart';
import 'package:socialice/screens/events_screen/widgets/my_events_subtitle.dart';
import 'package:socialice/widgets/skelton.dart';

class EventsScreen extends ConsumerWidget {
  const EventsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // get the user state
    final appUserState = ref.read(appUserProvider);

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
                Text(
                  'My Events',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 28,
                    color: Color(0xFF1B1A1D),
                  ),
                ),
                appUserState.when(
                  data: (appUser) {
                    final organizedEvents =
                        EventModel.getOrganizedEvents(appUser.events!, appUser);

                    return Text(
                      'You Have ${organizedEvents.length + organizedEvents.length} Events',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 22,
                        color: Color(0xFFC1C1CB),
                      ),
                    );
                  },
                  error: (error, stackTrace) => SizedBox.shrink(),
                  loading: () => Skelton(
                      height: 30, borderRadius: 8, isProfileImage: false),
                ),
                SizedBox(
                  height: 32,
                ),
                MyEventsSubtitle(
                  subtitle: 'My Events',
                ),
                appUserState.when(
                  data: (appUser) {
                    final organizedEvents =
                        EventModel.getOrganizedEvents(appUser.events!, appUser);

                    if (organizedEvents.isEmpty)
                      // create your first event if there are no organized events
                      return CreateFirstEvent();
                    else
                      // list of all the organized events as an owner or organizer
                      return Column(
                        children: [
                          for (int i = 0; i < organizedEvents.length; i++)
                            Padding(
                              padding: i != organizedEvents.length - 1
                                  ? const EdgeInsets.only(bottom: 16.0)
                                  : EdgeInsets.zero,
                              child: MyEvent(
                                event: organizedEvents[i],
                              ),
                            ),
                        ],
                      );
                  },
                  loading: () => Skelton(
                      height: 51, borderRadius: 8, isProfileImage: false),
                  error: (error, stackTrace) => SizedBox.shrink(),
                ),
                SizedBox(
                  height: 32,
                ),
                MyEventsSubtitle(subtitle: 'Joined Events'),
                appUserState.when(
                  data: (appUser) {
                    // get the future events
                    final futureEvents =
                        EventModel.getFutureEvents(appUser.events!);

                    if (futureEvents.isEmpty)
                      // there are no future joined events
                      return EmptyJoinedEvent();
                    else
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          for (int i = 0; i < futureEvents.length; i++)
                            Padding(
                              padding: i != futureEvents.length - 1
                                  ? const EdgeInsets.only(bottom: 16.0)
                                  : EdgeInsets.zero,
                              child: JoinedOrPastEvent(event: futureEvents[i]),
                            )
                        ],
                      );
                  },
                  loading: () => Skelton(
                      height: 51, borderRadius: 8, isProfileImage: false),
                  error: (error, stackTrace) => SizedBox.shrink(),
                ),
                SizedBox(
                  height: 32,
                ),
                MyEventsSubtitle(subtitle: 'Past Events'),
                appUserState.when(
                  data: (appUser) {
                    // get the past events
                    final pastEvents =
                        EventModel.getPastEvents(appUser.events!);

                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        for (int i = 0; i < pastEvents.length; i++)
                          Padding(
                            padding: i != pastEvents.length - 1
                                ? const EdgeInsets.only(bottom: 16.0)
                                : EdgeInsets.zero,
                            child: JoinedOrPastEvent(event: pastEvents[i]),
                          )
                      ],
                    );
                  },
                  error: (error, stackTrace) => SizedBox.shrink(),
                  loading: () => Skelton(
                      height: 51, borderRadius: 8, isProfileImage: false),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
