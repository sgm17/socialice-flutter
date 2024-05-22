import 'package:flutter/material.dart';
import 'package:socialice/constants/app_colors.dart';
import 'package:socialice/widgets/arrow_back.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AllGroupsNotFoundScreen extends StatelessWidget {
  const AllGroupsNotFoundScreen({Key? key}) : super(key: key);

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
            Expanded(
                child: Center(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                  SizedBox(
                    width: 118.11,
                    height: 110.68,
                    child: SvgPicture.asset(
                      'assets/vectors/person_search.svg',
                    ),
                  ),
                  SizedBox(
                    height: 16.0,
                  ),
                  Column(
                    children: [
                      Text(
                        'No groups',
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
                        'No groups found with the provided input',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: Color(0xFFC1C1CB),
                        ),
                      ),
                    ],
                  ),
                ])))
          ],
        ),
      )),
    );
  }
}
