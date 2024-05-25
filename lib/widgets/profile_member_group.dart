import 'package:flutter/widgets.dart';
import 'package:socialice/domains/community_repository/src/models/community_model.dart';

class ProfileMemberGroup extends StatelessWidget {
  const ProfileMemberGroup({
    super.key,
    required this.community,
  });

  final CommunityModel community;

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
              image: NetworkImage(
                community.image,
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
            Text(
              community.name,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 18,
                color: Color(0xFF1B1A1D),
              ),
            ),
            Text(
              '${community.members!.length} members',
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
