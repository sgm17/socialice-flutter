import 'package:flutter/widgets.dart';

class EventsNotFound extends StatelessWidget {
  const EventsNotFound({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 150,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    'assets/images/all_events_not_found_image.png',
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 16.0,
            ),
            Column(
              children: [
                Text(
                  'No events',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 30,
                    color: Color(0xFF000000),
                  ),
                ),
                SizedBox(
                  height: 4.0,
                ),
                Text(
                  'No events found with the provided input',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                    color: Color(0xFFC1C1CB),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
