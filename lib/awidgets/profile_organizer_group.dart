import 'package:flutter/material.dart';

class ProfileOrganizerGroup extends StatelessWidget {
  const ProfileOrganizerGroup({
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
                'assets/images/my_profile_event_image_1.png',
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
              'Meet New Friends Zurich',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 18,
                color: Color(0xFF1B1A1D),
              ),
            ),
            Text(
              '17 members',
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
