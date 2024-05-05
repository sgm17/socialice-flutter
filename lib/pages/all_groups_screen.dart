import 'package:flutter/material.dart';
import 'package:socialice/app_colors.dart';
import 'package:socialice/awidgets/all_events_header.dart';
import 'package:socialice/awidgets/arrow_back.dart';
import 'package:socialice/awidgets/black_container_button.dart';

class AllGroupsScreen extends StatelessWidget {
  const AllGroupsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ArrowBack(),
            SizedBox(
              height: 32,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'All Groups',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 28,
                    color: AppColors.blackColor,
                  ),
                ),
                Text(
                  '0 Groups In Total',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 22,
                    color: AppColors.greyLightColor,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AllGroupsItem(
                    groupImage: 'assets/images/all_groups_image1.png',
                    groupName: "Zürich Improv Meetup",
                    groupLocation: "Zürich",
                    members: 200),
                SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Color(0xFF1B1A1D),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x40000000),
                          offset: Offset(0, 4),
                          blurRadius: 2,
                        ),
                      ],
                    ),
                    child: BlackContainerButton(
                      text: 'Join',
                      action: () =>
                          Navigator.pushNamed(context, '/ComunityScreen'),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      )),
    );
  }
}

class AllGroupsItem extends StatelessWidget {
  const AllGroupsItem({
    super.key,
    required this.groupImage,
    required this.groupName,
    required this.groupLocation,
    required this.members,
  });

  final String groupImage;
  final String groupName;
  final String groupLocation;
  final int members;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 80,
          height: 80,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(groupImage), fit: BoxFit.cover)),
        ),
        SizedBox(
          width: 12,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              groupName,
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 18,
                color: Color(0xFF000000),
              ),
            ),
            Text(
              groupLocation,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: AppColors.greyLightColor,
              ),
            ),
            Text(
              "${members} members",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: AppColors.greyLightColor,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
