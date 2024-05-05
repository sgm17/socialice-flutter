import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:socialice/app_colors.dart';
import 'package:socialice/awidgets/black_container_button.dart';
import 'package:socialice/awidgets/email_input.dart';
import 'package:socialice/awidgets/or_sign_with.dart';
import 'package:socialice/awidgets/password_input.dart';
import 'package:socialice/awidgets/sign_oaut2_items.dart';
import 'package:socialice/utils.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 48,
              ),
              Text(
                'Welcome back! Glad to see you, Again!',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 36,
                  color: Color(0xFF000000),
                ),
              ),
              SizedBox(
                height: 42,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                  EmailInput(),
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
                ],
              ),
              SizedBox(
                height: 16,
              ),
              GestureDetector(
                onTap: () =>
                    Navigator.pushNamed(context, "/ForgotPasswordScreen"),
                child: Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Color(0xFF1B1A1D),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 48,
              ),
              BlackContainerButton(
                text: 'Login',
                action: () => Navigator.pushNamedAndRemoveUntil(
                    context, '/AppScreen', (route) => false),
              ),
              SizedBox(
                height: 32,
              ),
              OrSignWith(
                method: 'Login',
              ),
              SizedBox(
                height: 32,
              ),
              SignOauth2Items(),
              SizedBox(
                height: 48,
              ),
              GestureDetector(
                onTap: () => Navigator.pushNamedAndRemoveUntil(
                    context, "/RegisterScreen", (route) => false),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don’t have an account yet?',
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
                      'Register',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        color: Color(0xFF1B1A1D),
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
