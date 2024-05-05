import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:socialice/app_colors.dart';
import 'package:socialice/awidgets/all_events_header.dart';
import 'package:socialice/awidgets/arrow_back.dart';

class AllEventsNotFoundScreen extends StatefulWidget {
  const AllEventsNotFoundScreen({Key? key}) : super(key: key);

  @override
  State<AllEventsNotFoundScreen> createState() =>
      _AllEventsNotFoundScreenState();
}

class _AllEventsNotFoundScreenState extends State<AllEventsNotFoundScreen> {
  bool cozy = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ArrowBack(),
              SizedBox(
                height: 32.0,
              ),
              AllEventsHeader(cozy: cozy),
              Expanded(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 200,
                        height: 150,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              'assets/images/all_events_not_found_image.png',
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 16.0,
                      ),
                      Column(
                        children: [
                          Text(
                            'No events',
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
                            'No events found with the provided input',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                              color: Color(0xFFC1C1CB),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
