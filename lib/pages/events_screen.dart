import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:socialice/utils.dart';

class EventsScreen extends StatelessWidget {
  const EventsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final int assistants = 153;
    final String eventName = 'Artistics Museum 2020';
    final String eventTimestamp = 'May 30 2024';

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'My Events',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 28,
                    color: Color(0xFF1B1A1D),
                  ),
                ),
                Text(
                  'You Have 0 Events',
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
                MyEvent(eventName: eventName, eventTimestamp: eventTimestamp),
                SizedBox(
                  height: 16.0,
                ),
                CreateFirstEvent(),
                SizedBox(
                  height: 32,
                ),
                MyEventsSubtitle(subtitle: 'Active Events'),
                ActivePastEvent(),
                SizedBox(
                  height: 32,
                ),
                MyEventsSubtitle(subtitle: 'Past Events')
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ActivePastEvent extends StatelessWidget {
  const ActivePastEvent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 50,
          width: 50,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                'assets/images/event_group_picture.png',
              ),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: Text(
                  '153',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: Color(0xFFFFFFFF),
                  ),
                ),
              ),
              SizedBox(
                width: 2,
              ),
              Container(
                width: 10,
                height: 10,
                child: SizedBox(
                  width: 7.5,
                  height: 7.3,
                  child: SvgPicture.asset(
                    'assets/vectors/vector_54_x2.svg',
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: 16,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 3),
              child: Text(
                'Artistics Museum 2020',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Color(0xFF000000),
                ),
              ),
            ),
            Text(
              'May 30 2024',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 12,
                color: Color(0xFFC1C1CB),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class MyEventsSubtitle extends StatelessWidget {
  const MyEventsSubtitle({
    super.key,
    required this.subtitle,
  });

  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
      child: Align(
        alignment: Alignment.topLeft,
        child: Text(
          subtitle,
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 16,
            color: Color(0xFF3F8DFD),
          ),
        ),
      ),
    );
  }
}

class CreateFirstEvent extends StatelessWidget {
  const CreateFirstEvent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          alignment: Alignment.center,
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: Color(0xFFDDDDDD),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Container(
            width: 18.3,
            height: 19.4,
            child: SizedBox(
              width: 18.3,
              height: 19.4,
              child: SvgPicture.asset(
                'assets/vectors/vector_23_x2.svg',
              ),
            ),
          ),
        ),
        SizedBox(
          width: 16,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 3),
              child: Text(
                'Create Your First Event',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Color(0xFF000000),
                ),
              ),
            ),
            Text(
              'Add people and join the community',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 12,
                color: Color(0xFFC1C1CB),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class MyEvent extends StatelessWidget {
  const MyEvent({
    super.key,
    required this.eventName,
    required this.eventTimestamp,
  });

  final String eventName;
  final String eventTimestamp;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 50,
          width: 50,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                'assets/images/event_group_picture.png',
              ),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: Text(
                  '153',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: Color(0xFFFFFFFF),
                  ),
                ),
              ),
              SizedBox(
                width: 2,
              ),
              Container(
                width: 10,
                height: 10,
                child: SizedBox(
                  width: 7.5,
                  height: 7.3,
                  child: SvgPicture.asset(
                    'assets/vectors/vector_54_x2.svg',
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: 16,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 3),
              child: Text(
                eventName,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Color(0xFF000000),
                ),
              ),
            ),
            Text(
              eventTimestamp,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 12,
                color: Color(0xFFC1C1CB),
              ),
            ),
          ],
        ),
        SizedBox(
          width: 16,
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 19.8,
                height: 19.8,
                child: SvgPicture.asset(
                  'assets/vectors/vector_13_x2.svg',
                ),
              ),
              Container(
                width: 22.2,
                height: 22.2,
                child: SizedBox(
                  width: 22.2,
                  height: 22.2,
                  child: SvgPicture.asset(
                    'assets/vectors/vector_60_x2.svg',
                  ),
                ),
              ),
              Container(
                width: 17.5,
                height: 19.7,
                child: SizedBox(
                  width: 17.5,
                  height: 19.7,
                  child: SvgPicture.asset(
                    'assets/vectors/vector_51_x2.svg',
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
