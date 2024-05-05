import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:socialice/app_colors.dart';
import 'package:socialice/awidgets/arrow_back.dart';
import 'package:socialice/awidgets/black_container_button.dart';
import 'package:socialice/awidgets/email_input.dart';
import 'package:socialice/pages/message_dialog.dart';
import 'package:socialice/utils.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future<void> handleSendEmail() async {
      await showDialog(
          context: context,
          builder: (context) => MessageDialog(
                appError: 'An email has been sent to the provided address',
              ));
      Navigator.pop(context);
    }

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ArrowBack(),
              SizedBox(
                height: 32,
              ),
              Text(
                'Forgot Password?',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 28,
                  color: Color(0xFF1B1A1D),
                ),
              ),
              Text(
                'Don’t worry! It occurs. Please, enter the email address linked with your account',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: AppColors.greyLightColor,
                ),
              ),
              SizedBox(
                height: 32,
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: 176,
                  height: 173,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        'assets/images/forgot_password_image.png',
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 32,
              ),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 6),
                  child: Text(
                    'Email',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Color(0xFF000000),
                    ),
                  ),
                ),
                EmailInput(),
              ]),
              SizedBox(
                height: 32,
              ),
              BlackContainerButton(
                text: 'Send email',
                action: handleSendEmail,
              )
            ],
          ),
        ),
      ),
    );
  }
}