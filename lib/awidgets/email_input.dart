import 'package:flutter/material.dart';
import 'package:socialice/app_colors.dart';

class EmailInput extends StatelessWidget {
  const EmailInput({
    super.key,
  });

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
            contentPadding: EdgeInsets.fromLTRB(10, 14, 0, 14),
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
            hintText: 'e.g johndoe@gmail.com',
            hintStyle: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w400,
              color: AppColors.greyLightColor,
            )));
  }
}
