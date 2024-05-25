import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:socialice/constants/app_colors.dart';
import 'package:socialice/widgets/arrow_back.dart';

class TicketDetailScreen extends StatelessWidget {
  const TicketDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ArrowBack(
                color: AppColors.whiteColor,
              ),
              SizedBox(
                height: 24,
              ),
              Text(
                'Type O Negative: Bloody Kisses World Tour',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 19,
                  color: Color(0xFFFFFFFF),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Center(
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    SizedBox(
                      width: 361,
                      height: 677,
                      child: SvgPicture.asset(
                        'assets/vectors/ticket_container_x2.svg',
                      ),
                    ),
                    SizedBox(
                      width: 361,
                      height: 677,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 30,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 30.0),
                            child: Text(
                              'TYPE O NEGATIVE: BLOODY KISSES WORLD TOUR',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 21,
                                color: Color(0xFF000000),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 30.0),
                            child: Container(
                              height: 2,
                              decoration: BoxDecoration(
                                color: Color(0xFF000000),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 30.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.fromLTRB(0, 0, 0, 7),
                                      child: Text(
                                        'Order:',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 19,
                                          color: Color(0xFFC1C1CB),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      '986743433-2432',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 19,
                                        color: Color(0xFF000000),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.fromLTRB(0, 0, 0, 7),
                                      child: Text(
                                        'Name:',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 19,
                                          color: Color(0xFFC1C1CB),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      'Anastasia Kharitonova',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 19,
                                        color: Color(0xFF000000),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.fromLTRB(0, 0, 0, 7),
                                      child: Text(
                                        'Venue:',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 19,
                                          color: Color(0xFFC1C1CB),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      'Underworld, London, Uk',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 19,
                                        color: Color(0xFF000000),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin:
                                              EdgeInsets.fromLTRB(0, 0, 0, 7),
                                          child: Text(
                                            'Date:',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 19,
                                              color: Color(0xFFC1C1CB),
                                            ),
                                          ),
                                        ),
                                        Text(
                                          'March 12, 2023',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 19,
                                            color: Color(0xFF000000),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Container(
                                          margin:
                                              EdgeInsets.fromLTRB(0, 0, 0, 7),
                                          child: Text(
                                            'Time:',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 19,
                                              color: Color(0xFFC1C1CB),
                                            ),
                                          ),
                                        ),
                                        Text(
                                          '08:00 Pm',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 19,
                                            color: Color(0xFF000000),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 408,
                      child: Text(
                        'Show this QR code at the entrance',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: Color(0xFF8B91A8),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 438,
                      child: Container(
                        width: 311,
                        height: 3,
                        decoration: BoxDecoration(
                          color: Color(0xFFC1C1CB),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 30,
                      child: Container(
                        width: 171,
                        height: 179,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                              'assets/images/qr_code_image.png',
                            ),
                          ),
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: 171,
                              height: 179,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
