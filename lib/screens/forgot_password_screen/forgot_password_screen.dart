import 'package:flutter/material.dart';
import 'package:socialice/constants/app_colors.dart';
import 'package:socialice/widgets/arrow_back.dart';
import 'package:socialice/widgets/black_container_button.dart';
import 'package:socialice/widgets/email_input.dart';
import 'package:socialice/dialogs/message_dialog/message_dialog.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  late TextEditingController _emailController;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
  }

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Future<void> handleSendEmail() async {
      showDialog(
          context: context,
          builder: (context) => MessageDialog(
                message: 'An email has been sent to the provided address',
                buttonText: 'Ok',
              )).then((value) {
        if (value is bool && value) {
          Navigator.pop(context);
        }
      });
    }

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 32,
              ),
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
                EmailInput(
                  emailController: _emailController,
                ),
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
