import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:socialice/awidgets/black_container_button.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:socialice/utils.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Stack(children: [
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
                              image: AssetImage(
                                'assets/images/welcome_screen_image_1.jpeg',
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
                              image: AssetImage(
                                'assets/images/welcome_screen_image_2.jpeg',
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
                            image: AssetImage(
                              'assets/images/welcome_screen_image_3.jpeg',
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
                              image: AssetImage(
                                'assets/images/welcome_screen_image_4.jpeg',
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
                              image: AssetImage(
                                'assets/images/welcome_screen_image_5.jpeg',
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
                              image: AssetImage(
                                'assets/images/welcome_screen_image_6.jpeg',
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
                                image: AssetImage(
                                  'assets/images/welcome_screen_image_7.jpeg',
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
                                image: AssetImage(
                                  'assets/images/welcome_screen_image_9.jpeg',
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
                                image: AssetImage(
                                  'assets/images/welcome_screen_image_8.jpeg',
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
            ]),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 60),
            child: Column(
              children: [
                Container(
                  child: Text(
                    'End Your Sadness, Lets Have Fun With Us',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 34,
                      color: Color(0xFF000000),
                    ),
                  ),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Container(
                  child: Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 32),
                    child: Text(
                      'A Credible And Excellent Platform For Meeting New People',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                SizedBox(
                  height: 32.0,
                ),
                BlackContainerButton(
                    text: 'Get started',
                    action: () => Navigator.pushNamedAndRemoveUntil(
                        context, '/StartScreen', (route) => false)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
