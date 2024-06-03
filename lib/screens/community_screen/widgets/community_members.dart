import 'package:flutter/material.dart';
import 'package:socialice/domains/app_user_repository/src/models/app_user_model.dart';

class CommunityMembers extends StatelessWidget {
  const CommunityMembers({super.key, required this.members});

  final List<AppUserModel> members;

  @override
  Widget build(BuildContext context) {
    List<Widget> elements = [];

    final maxMembers = members.length >= 8 ? 8 : members.length;

    for (int i = 0; i < maxMembers; i++) {
      elements.add(
        Row(
          children: [
            Container(
              width: 37,
              height: 37,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18.5),
                image: members[i].profileImage == null
                    ? DecorationImage(
                        image: AssetImage("assets/images/default_avatar.png"),
                        fit: BoxFit.cover)
                    : DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          members[i].profileImage!,
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
