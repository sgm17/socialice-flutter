import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:socialice/domains/event_repository/src/models/event_model.dart';
import 'package:socialice/utils/date_parser.dart';

class JoinedOrPastEvent extends StatelessWidget {
  const JoinedOrPastEvent({
    super.key,
    required this.event,
  });

  final EventModel event;

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
              image: NetworkImage(
                event.image,
              ),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: Text(
                  event.participants!.length.toString(),
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
                event.name,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Color(0xFF000000),
                ),
              ),
            ),
            Text(
              formatMonthWordDayYear(event.startDate),
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
