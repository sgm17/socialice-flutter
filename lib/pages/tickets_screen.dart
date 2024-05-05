import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:socialice/app_colors.dart';
import 'package:socialice/utils.dart';

class TicketsScreen extends StatelessWidget {
  const TicketsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'My Tickets',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 28,
                  color: Color(0xFF1B1A1D),
                ),
              ),
              SizedBox(
                height: 26,
                child: Text(
                  '1 Ticket In The Wallet',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 22,
                    color: Color(0xFFC1C1CB),
                  ),
                ),
              ),
              SizedBox(
                height: 32,
              ),
              GestureDetector(
                  onTap: () =>
                      Navigator.pushNamed(context, '/TicketDetailScreen'),
                  child: TicketAvailable()),
              SizedBox(
                height: 32,
              ),
              NoTicketsAvailable(),
            ],
          ),
        ),
      ),
    );
  }
}

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
                'assets/images/all_events_popular_image_2.png',
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

class NoTicketsAvailable extends StatelessWidget {
  const NoTicketsAvailable({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.center,
        children: [
          SvgPicture.asset(
            'assets/vectors/ticket_1_group_x2.svg',
            height: 221,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'No Tickets Available',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 22,
                  color: Color(0xFF000000),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              SizedBox(
                width: 24.3,
                height: 25.8,
                child: SvgPicture.asset(
                  'assets/vectors/vector_10_x2.svg',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
