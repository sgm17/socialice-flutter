import 'package:flutter/material.dart';
import 'package:socialice/widgets/black_container_button.dart';
import 'dart:ui';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(alignment: Alignment.bottomCenter, children: [
        Positioned(
          top: -180,
          left: -50,
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(0, 60, 0, 0),
                child: Transform.rotate(
                  angle: .1745327161,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          'assets/images/welcome_screen_image_1.jpg',
                        ),
                      ),
                    ),
                    child: Container(
                      width: 180.9,
                      height: 214.5,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 32.0,
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
                child: Transform.rotate(
                  angle: .1745327161,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          'assets/images/welcome_screen_image_2.jpg',
                        ),
                      ),
                    ),
                    child: Container(
                      width: 180.9,
                      height: 214.5,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 32.0,
              ),
              Transform.rotate(
                angle: .1745327161,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        'assets/images/welcome_screen_image_3.jpg',
                      ),
                    ),
                  ),
                  child: Container(
                    width: 180.9,
                    height: 214.5,
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: 30 + 30,
          left: -90,
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(0, 60, 0, 0),
                child: Transform.rotate(
                  angle: .1745327161,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          'assets/images/welcome_screen_image_4.jpg',
                        ),
                      ),
                    ),
                    child: Container(
                      width: 180.9,
                      height: 214.5,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 32.0,
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
                child: Transform.rotate(
                  angle: .1745327161,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          'assets/images/welcome_screen_image_5.jpg',
                        ),
                      ),
                    ),
                    child: Container(
                      width: 180.9,
                      height: 214.5,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 32.0,
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Transform.rotate(
                  angle: .1745327161,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          'assets/images/welcome_screen_image_6.jpg',
                        ),
                      ),
                    ),
                    child: Container(
                      width: 180.9,
                      height: 214.5,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          left: -130,
          top: 240 + 60,
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(0, 60, 0, 0),
                child: ImageFiltered(
                  imageFilter: ImageFilter.blur(
                    sigmaX: 2,
                    sigmaY: 2,
                  ),
                  child: Transform.rotate(
                    angle: 0.1745327161,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            'assets/images/welcome_screen_image_7.jpg',
                          ),
                        ),
                      ),
                      child: Container(
                        height: 214.5,
                        width: 180.9,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 32.0,
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
                child: ImageFiltered(
                  imageFilter: ImageFilter.blur(
                    sigmaX: 2,
                    sigmaY: 2,
                  ),
                  child: Transform.rotate(
                    angle: 0.1745330593,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            'assets/images/welcome_screen_image_9.jpg',
                          ),
                        ),
                      ),
                      child: Container(
                        width: 180.9,
                        height: 214.5,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 32.0,
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: ImageFiltered(
                  imageFilter: ImageFilter.blur(
                    sigmaX: 2,
                    sigmaY: 2,
                  ),
                  child: Transform.rotate(
                    angle: 0.1745330593,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            'assets/images/welcome_screen_image_8.jpg',
                          ),
                        ),
                      ),
                      child: Container(
                        width: 180.9,
                        height: 214.5,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: 590,
          bottom: 0,
          left: 16,
          right: 16,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Find Premium Events, Let's Have Fun",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 34,
                  color: Color(0xFF000000),
                ),
              ),
              Text(
                'An Excellent Platform For Meeting New People',
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.w400),
              ),
              BlackContainerButton(
                  text: 'Get started',
                  action: () => Navigator.pushNamedAndRemoveUntil(
                      context, '/StartScreen', (route) => false)),
              SizedBox(
                height: 32,
              )
            ],
          ),
        ),
      ]),
    );
  }
}
