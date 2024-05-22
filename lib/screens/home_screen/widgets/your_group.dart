import 'package:flutter/widgets.dart';
import 'package:socialice/domains/community_repository/src/models/community_model.dart';

class YourGroup extends StatelessWidget {
  const YourGroup({
    super.key,
    required this.community,
  });

  final CommunityModel community;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomLeft,
      padding: EdgeInsets.fromLTRB(7, 0, 0, 7),
      height: 150,
      width: 110,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            community.image,
          ),
        ),
      ),
      child: Text(
        community.name,
        style: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 16,
          color: Color(0xFFFFFFFF),
        ),
      ),
    );
  }
}
