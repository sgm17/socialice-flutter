import 'package:flutter/material.dart';
import 'package:socialice/constants/app_colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ConfirmPasswordInput extends StatefulWidget {
  const ConfirmPasswordInput({
    super.key,
    required this.hintText,
    required this.passwordController,
    required this.confirmPasswordController,
  });

  final String hintText;
  final TextEditingController passwordController, confirmPasswordController;

  @override
  State<ConfirmPasswordInput> createState() => _ConfirmPasswordInputState();
}

class _ConfirmPasswordInputState extends State<ConfirmPasswordInput> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        controller: widget.confirmPasswordController,
        maxLength: 30,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Password cannot be empty';
          } else if (value.length < 6) {
            return 'Password must be at least 6 characters long';
          } else if (value != widget.passwordController.text) {
            return 'Passwords do not match';
          }
          return null;
        },
        textAlignVertical: TextAlignVertical.center,
        obscureText: _obscureText,
        style: TextStyle(
          color: AppColors.blackColor,
          fontSize: 16.0,
          fontWeight: FontWeight.w400,
        ),
        decoration: InputDecoration(
            suffixIconConstraints: BoxConstraints(maxWidth: 50, maxHeight: 19),
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  _obscureText = !_obscureText;
                });
              },
              child: Container(
                width: 50,
                height: 19,
                child: SizedBox(
                  width: 21.6,
                  height: 19,
                  child: SvgPicture.asset(
                    'assets/vectors/vector_44_x2.svg',
                  ),
                ),
              ),
            ),
            contentPadding: EdgeInsets.fromLTRB(10, 14, 16, 14),
            counter: SizedBox.shrink(),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: AppColors.greyLightColor,
                  width: 1,
                )),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide:
                    BorderSide(color: AppColors.greyLightColor, width: 1)),
            isCollapsed: true,
            hintText: widget.hintText,
            hintStyle: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w400,
              color: AppColors.greyLightColor,
            )));
  }
}
