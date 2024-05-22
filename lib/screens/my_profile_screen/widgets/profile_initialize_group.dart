import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileInitializeGroup extends StatelessWidget {
  const ProfileInitializeGroup({
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
            width: 22.3,
            height: 14.6,
            child: SizedBox(
              width: 22.3,
              height: 14.6,
              child: SvgPicture.asset(
                'assets/vectors/vector_21_x2.svg',
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
              'Initialize a new group',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 18,
                color: Color(0xFF1B1A1D),
              ),
            ),
            Text(
              'Create a group for your community',
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
