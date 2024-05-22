import 'package:flutter/material.dart';
import 'package:socialice/constants/app_colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EventScreenAddOrganizer extends StatelessWidget {
  const EventScreenAddOrganizer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(0, 0, 14, 0),
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xFFDDDDDD),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Container(
              alignment: Alignment.center,
              width: 40,
              height: 40,
              child: Container(
                height: 13,
                child: SizedBox(
                  height: 13,
                  child: SvgPicture.asset(
                    'assets/vectors/vector_67_x2.svg',
                  ),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Name',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: AppColors.blackColor,
                ),
              ),
              SizedBox(
                child: TextField(
                  maxLength: 30,
                  textAlignVertical: TextAlignVertical.center,
                  decoration: InputDecoration(
                      counter: SizedBox.shrink(),
                      border: InputBorder.none,
                      isCollapsed: true,
                      hintText: '@username',
                      hintStyle: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w400,
                        color: AppColors.greyLightColor,
                      )),
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: AppColors.blackColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
