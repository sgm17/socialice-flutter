import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:socialice/domains/event_repository/src/models/event_model.dart';
import 'package:socialice/providers/app_user_provider/app_user_provider.dart';
import 'package:socialice/providers/event_provider/events_provider.dart';
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
    final eventsState = ref.watch(eventsProvider);

    // get the user state
    final appUserState = ref.read(appUserProvider).asData?.value;

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
                eventsState.when(
                  data: (events) {
                    // get all the joined events by the user
                    final pastAndFutureEvents =
                        events.where((e) => e.joined).toList();

                    final organizedEvents =
                        EventModel.getOrganizedEvents(events, appUserState);

                    return Text(
                      'You Have ${pastAndFutureEvents.length + organizedEvents.length} Events',
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
                eventsState.when(
                  data: (events) {
                    final organizedEvents =
                        EventModel.getOrganizedEvents(events, appUserState);

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
                eventsState.when(
                  data: (events) {
                    // get the future events
                    final futureEvents = EventModel.getFutureEvents(events);

                    // get the joined events
                    final joinedEvents =
                        futureEvents.where((e) => e.joined).toList();

                    if (joinedEvents.isEmpty)
                      // there are no future joined events
                      return EmptyJoinedEvent();
                    else
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          for (int i = 0; i < joinedEvents.length; i++)
                            Padding(
                              padding: i != joinedEvents.length - 1
                                  ? const EdgeInsets.only(bottom: 16.0)
                                  : EdgeInsets.zero,
                              child: JoinedOrPastEvent(event: joinedEvents[i]),
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
                eventsState.when(
                  data: (events) {
                    // get the past events
                    final pastEvents = EventModel.getPastEvents(events);

                    // get the joined events
                    final joinedEvents =
                        pastEvents.where((e) => e.joined).toList();

                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        for (int i = 0; i < joinedEvents.length; i++)
                          Padding(
                            padding: i != joinedEvents.length - 1
                                ? const EdgeInsets.only(bottom: 16.0)
                                : EdgeInsets.zero,
                            child: JoinedOrPastEvent(event: joinedEvents[i]),
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
