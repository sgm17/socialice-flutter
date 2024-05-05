import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:socialice/awidgets/all_events_header.dart';
import 'package:socialice/awidgets/arrow_back.dart';
import 'package:socialice/awidgets/event_crozy.dart';
import 'package:socialice/awidgets/event_headline.dart';

class AllEventsScreen extends StatefulWidget {
  const AllEventsScreen({Key? key}) : super(key: key);

  @override
  State<AllEventsScreen> createState() => _AllEventsScreenState();
}

class _AllEventsScreenState extends State<AllEventsScreen> {
  bool cozy = false;

  void handleCozyTap() {
    setState(() {
      cozy = !cozy;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ArrowBack(),
              SizedBox(
                height: 32.0,
              ),
              AllEventsHeader(
                cozy: cozy,
                handleCozyTap: handleCozyTap,
              ),
              SizedBox(
                height: 20.0,
              ),
              if (cozy)
                Column(
                  children: [
                    Row(
                      children: [
                        Flexible(
                            child: EventCrozy(
                          action: () =>
                              Navigator.pushNamed(context, '/EventScreen'),
                        )),
                        SizedBox(
                          width: 7.0,
                        ),
                        Flexible(
                            child: EventCrozy(
                          action: () =>
                              Navigator.pushNamed(context, '/EventScreen'),
                        )),
                      ],
                    ),
                    SizedBox(
                      height: 16.0,
                    )
                  ],
                )
              else
                Column(
                  children: [
                    EventHeadline(
                      action: () =>
                          Navigator.pushNamed(context, '/EventScreen'),
                    ),
                    SizedBox(
                      height: 16.0,
                    ),
                    EventHeadline(
                      action: () =>
                          Navigator.pushNamed(context, '/EventScreen'),
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
