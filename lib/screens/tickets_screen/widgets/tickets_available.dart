import 'package:flutter/material.dart';
import 'package:socialice/constants/app_colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TicketAvailable extends StatelessWidget {
  const TicketAvailable({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          SvgPicture.asset(
            'assets/vectors/ticket_1_group_x2.svg',
            height: 221,
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25)),
              child: Image.asset(
                "xd",
                height: 90,
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          Positioned(
              top: 16,
              left: 16,
              right: 16,
              bottom: 90 + 16,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'May 29 2024',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                              color: Color(0xFF000000),
                            ),
                          ),
                          Text(
                            '20:00',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                              color: AppColors.greyDarkColor,
                            ),
                          ),
                        ]),
                    Text(
                      'Morning coffee & make new friends: ViCAFE...',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                        color: Color(0xFF000000),
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      'Seestrasse, Zurich',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        color: AppColors.greyDarkColor,
                      ),
                    ),
                  ]))
        ],
      ),
    );
  }
}
