import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:socialice/domains/event_repository/src/models/event_model.dart';
import 'package:socialice/providers/event_provider/events_provider.dart';
import 'package:socialice/screens/all_events_screen/widgets/events_not_found.dart';
import 'package:socialice/widgets/all_events_header.dart';
import 'package:socialice/widgets/arrow_back.dart';
import 'package:socialice/widgets/event_crozy.dart';
import 'package:socialice/widgets/event_headline.dart';
import 'package:socialice/widgets/skelton.dart';

class AllEventsScreen extends ConsumerStatefulWidget {
  const AllEventsScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<AllEventsScreen> createState() => _AllEventsScreenState();
}

class _AllEventsScreenState extends ConsumerState<AllEventsScreen> {
  // display the events in cozy or each event in one line
  bool cozy = false;

  void handleCozyTap() {
    setState(() {
      cozy = !cozy;
    });
  }

  @override
  Widget build(BuildContext context) {
    final eventsState = ref.watch(eventsProvider);

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 32,
              ),
              ArrowBack(),
              SizedBox(
                height: 16.0,
              ),
              AllEventsHeader(
                cozy: cozy,
                handleCozyTap: handleCozyTap,
              ),
              if (cozy)
                // display events as a grid view
                eventsState.when(
                    data: (data) {
                      // get the future events
                      final events = EventModel.getFutureEvents(data);

                      // there are no future events. this is a very unlikely case
                      if (events.isEmpty) return EventsNotFound();

                      // display all the future events in a cozy view
                      return Expanded(
                        child: ListView.separated(
                          padding: EdgeInsets.only(top: 20),
                          separatorBuilder: (context, index) => SizedBox(
                            height: 16,
                          ),
                          itemCount:
                              (events.length / 2).ceil(), // Number of rows
                          itemBuilder: (BuildContext context, int index) {
                            int firstEventIndex = index * 2;
                            int secondEventIndex = firstEventIndex + 1;

                            return Row(
                              children: [
                                Expanded(
                                    child: firstEventIndex < events.length
                                        ? EventCrozy(
                                            event: events[firstEventIndex])
                                        : SizedBox.shrink()),
                                SizedBox(
                                  width: 16,
                                ),
                                Expanded(
                                  child: secondEventIndex < events.length
                                      ? EventCrozy(
                                          event: events[secondEventIndex],
                                        )
                                      : SizedBox.shrink(),
                                ),
                              ],
                            );
                          },
                        ),
                      );
                    },
                    error: (error, stackTrace) => SizedBox.shrink(),
                    loading: () {
                      return Row(
                        children: [
                          Flexible(
                              child: Skelton(
                            height: 250.8,
                            borderRadius: 10,
                            isProfileImage: false,
                          )),
                          SizedBox(
                            width: 7.0,
                          ),
                          Flexible(
                              child: Skelton(
                                  height: 250.8,
                                  borderRadius: 10,
                                  isProfileImage: false)),
                        ],
                      );
                    })
              else
                // display one event each line
                eventsState.when(
                  data: (data) {
                    final events = EventModel.getFutureEvents(data);

                    // there are no future events. unlikely case
                    if (events.isEmpty)
                      return EventsNotFound();
                    else
                      // display each of the future events in a single line
                      return Expanded(
                        child: ListView.separated(
                            padding: EdgeInsets.only(top: 20),
                            itemCount: events.length,
                            itemBuilder: (BuildContext context, int index) {
                              return EventHeadline(
                                eventHeadline: events[index],
                              );
                            },
                            separatorBuilder:
                                (BuildContext context, int index) => SizedBox(
                                      height: 16,
                                    )),
                      );
                  },
                  loading: () {
                    return Column(
                      children: [
                        Skelton(
                            height: 203,
                            borderRadius: 10,
                            isProfileImage: false),
                        SizedBox(
                          height: 16.0,
                        ),
                        Skelton(
                            height: 203,
                            borderRadius: 10,
                            isProfileImage: false),
                      ],
                    );
                  },
                  error: (error, stackTrace) => SizedBox.shrink(),
                )
            ],
          ),
        ),
      ),
    );
  }
}
