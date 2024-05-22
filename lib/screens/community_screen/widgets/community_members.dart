import 'package:flutter/material.dart';

class CommunityMembers extends StatelessWidget {
  const CommunityMembers({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> elements = [];

    for (var i = 0; i < 8; i++) {
      elements.add(
        Row(
          children: [
            Container(
              width: 37,
              height: 37,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18.5),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'assets/images/community_profile_1.png',
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 6.0,
            )
          ],
        ),
      );
    }

    return Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: elements);
  }
}
