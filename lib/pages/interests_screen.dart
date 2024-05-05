import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:socialice/awidgets/arrow_back.dart';
import 'package:socialice/awidgets/black_container_button.dart';
import 'package:socialice/awidgets/user_interest.dart';
import 'package:socialice/utils.dart';

class InterestsScreen extends StatelessWidget {
  const InterestsScreen({Key? key}) : super(key: key);
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
                height: 16,
              ),
              Text(
                'Search new interests',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                  color: Color(0xFF1B1A1D),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Pick your favorite interests to find gorups and events related to them',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Color(0xFF1B1A1D),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  UserInterest(
                    interestName: 'Vida social',
                    selected: true,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  UserInterest(
                    interestName: 'Póker',
                    selected: false,
                  ),
                ],
              ),
              SizedBox(
                height: 32,
              ),
              BlackContainerButton(
                  text: 'Save interests', action: () => Navigator.pop(context))
            ],
          ),
        ),
      ),
    );
  }
}
