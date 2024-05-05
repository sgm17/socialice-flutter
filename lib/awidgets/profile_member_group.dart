import 'package:flutter/widgets.dart';

class ProfileMemberGroup extends StatelessWidget {
  const ProfileMemberGroup({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                'assets/images/my_profile_event_image_2.png',
              ),
            ),
          ),
        ),
        SizedBox(
          width: 16,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Learn Dance Latino Zürich',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 18,
                color: Color(0xFF1B1A1D),
              ),
            ),
            Text(
              '147 members',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13,
                color: Color(0xFF1B1A1D),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
