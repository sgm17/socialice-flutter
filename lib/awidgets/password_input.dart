import 'package:flutter/material.dart';
import 'package:socialice/app_colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PasswordInput extends StatelessWidget {
  const PasswordInput({
    super.key,
    required this.hintText,
  });

  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextField(
        maxLength: 100,
        textAlignVertical: TextAlignVertical.center,
        style: TextStyle(
          color: AppColors.blackColor,
          fontSize: 16.0,
          fontWeight: FontWeight.w400,
        ),
        decoration: InputDecoration(
            suffixIconConstraints: BoxConstraints(maxWidth: 50, maxHeight: 19),
            suffixIcon: Container(
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
            hintText: hintText,
            hintStyle: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w400,
              color: AppColors.greyLightColor,
            )));
  }
}
