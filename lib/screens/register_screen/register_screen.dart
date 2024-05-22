import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:socialice/constants/app_colors.dart';
import 'package:socialice/widgets/black_container_button.dart';
import 'package:socialice/widgets/or_sign_with.dart';
import 'package:socialice/widgets/password_input.dart';
import 'package:socialice/widgets/sign_oaut2_items.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 32,
                ),
                Text(
                  'Welcome to Socialize!',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 36,
                    color: Color(0xFF000000),
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
                Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Name',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: Color(0xFF000000),
                                  ),
                                ),
                                SizedBox(
                                  height: 6,
                                ),
                                TextFormField(
                                    maxLength: 100,
                                    textAlignVertical: TextAlignVertical.center,
                                    style: TextStyle(
                                      color: AppColors.blackColor,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w400,
                                    ),
                                    decoration: InputDecoration(
                                        contentPadding:
                                            EdgeInsets.fromLTRB(10, 14, 0, 14),
                                        counter: SizedBox.shrink(),
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            borderSide: BorderSide(
                                              color: AppColors.greyLightColor,
                                              width: 1,
                                            )),
                                        focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            borderSide: BorderSide(
                                                color: AppColors.greyLightColor,
                                                width: 1)),
                                        isCollapsed: true,
                                        hintText: 'Sergi',
                                        hintStyle: TextStyle(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.w400,
                                          color: AppColors.greyLightColor,
                                        ))),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Surname',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: Color(0xFF000000),
                                  ),
                                ),
                                SizedBox(
                                  height: 6,
                                ),
                                TextFormField(
                                    maxLength: 100,
                                    textAlignVertical: TextAlignVertical.center,
                                    style: TextStyle(
                                      color: AppColors.blackColor,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w400,
                                    ),
                                    decoration: InputDecoration(
                                        contentPadding:
                                            EdgeInsets.fromLTRB(10, 14, 0, 14),
                                        counter: SizedBox.shrink(),
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            borderSide: BorderSide(
                                              color: AppColors.greyLightColor,
                                              width: 1,
                                            )),
                                        focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            borderSide: BorderSide(
                                                color: AppColors.greyLightColor,
                                                width: 1)),
                                        isCollapsed: true,
                                        hintText: 'Garcia',
                                        hintStyle: TextStyle(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.w400,
                                          color: AppColors.greyLightColor,
                                        ))),
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        'Email',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Color(0xFF000000),
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      TextFormField(
                          maxLength: 100,
                          textAlignVertical: TextAlignVertical.center,
                          style: TextStyle(
                            color: AppColors.blackColor,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w400,
                          ),
                          decoration: InputDecoration(
                              contentPadding:
                                  EdgeInsets.fromLTRB(10, 14, 0, 14),
                              counter: SizedBox.shrink(),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: AppColors.greyLightColor,
                                    width: 1,
                                  )),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                      color: AppColors.greyLightColor,
                                      width: 1)),
                              isCollapsed: true,
                              hintText: 'e.g johndoe@gmail.com',
                              hintStyle: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w400,
                                color: AppColors.greyLightColor,
                              ))),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        'Password',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Color(0xFF000000),
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      PasswordInput(
                        hintText: 'Password',
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        'Confirm Password',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Color(0xFF000000),
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      PasswordInput(
                        hintText: 'Confirm Password',
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
                BlackContainerButton(
                  text: 'Register',
                  action: () => Navigator.pushNamedAndRemoveUntil(
                      context, '/AppScreen', (route) => false),
                ),
                SizedBox(
                  height: 32,
                ),
                OrSignWith(
                  method: 'Register',
                ),
                SizedBox(
                  height: 32,
                ),
                SignOauth2Items(),
                SizedBox(
                  height: 32,
                ),
                GestureDetector(
                  onTap: () => Navigator.pushNamedAndRemoveUntil(
                      context, '/LoginScreen', (route) => false),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Have an account already?',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 15,
                            color: Color(0xFFC1C1CB),
                          ),
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Text(
                          'Login',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 15,
                            color: Color(0xFF1B1A1D),
                          ),
                        ),
                      ]),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
