import 'package:socialice/providers/event_provider/events_provider.dart';
import 'package:socialice/screens/events_screen/widgets/empty_joined_event.dart';
import 'package:socialice/screens/events_screen/widgets/joined_or_past_event.dart';
import 'package:socialice/screens/events_screen/widgets/create_first_event.dart';
import 'package:socialice/screens/events_screen/widgets/my_events_subtitle.dart';
import 'package:socialice/providers/app_user_provider/app_user_provider.dart';
import 'package:socialice/screens/events_screen/widgets/my_event.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

class EventsScreen extends ConsumerWidget {
  const EventsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // get the user state
    final appUser = ref.watch(appUserProvider).asData!.value;
    final events = ref.watch(eventsProvider).asData!.value;

    // created events and events as an organizer
    final myEvents =
        events.where((e) => e.community.owner.id == appUser.id).toList();

    // events that the user has joined
    final joinedEvents = appUser.events!;

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
                Text(
                  'You Have ${myEvents.length} Events',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 22,
                    color: Color(0xFFC1C1CB),
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
                MyEventsSubtitle(
                  subtitle: 'My Events',
                ),
                if (myEvents.isEmpty)
                  // create your first event if there are no organized events
                  CreateFirstEvent()
                else
                  // list of all the organized events as an owner or organizer
                  Column(
                    children: [
                      for (int i = 0; i < myEvents.length; i++)
                        Padding(
                          padding: i != myEvents.length - 1
                              ? const EdgeInsets.only(bottom: 16.0)
                              : EdgeInsets.zero,
                          child: MyEvent(
                            event: myEvents[i],
                          ),
                        ),
                    ],
                  ),
                SizedBox(
                  height: 32,
                ),
                MyEventsSubtitle(subtitle: 'Joined Events'),
                if (joinedEvents.isEmpty)
                  // there are no future joined events
                  EmptyJoinedEvent()
                else
                  Column(
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
                  ),
                SizedBox(
                  height: 32,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
