import 'package:flutter/material.dart';
import 'package:socialice/constants/app_colors.dart';

class EditProfileInput extends StatelessWidget {
  const EditProfileInput(
      {super.key, required this.title, required this.controller});

  final String title;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 16,
            color: AppColors.blackColor,
          ),
        ),
        SizedBox(
          height: 4,
        ),
        TextFormField(
            controller: controller,
            maxLength: 40,
            textAlignVertical: TextAlignVertical.center,
            style: TextStyle(
              color: AppColors.blackColor,
              fontSize: 14.0,
              fontWeight: FontWeight.w400,
            ),
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(16),
              counter: SizedBox.shrink(),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide:
                      BorderSide(color: AppColors.greyLightColor, width: 1)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide:
                      BorderSide(color: AppColors.greyLightColor, width: 1)),
              isCollapsed: true,
              hintText: title,
              hintStyle: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.w400,
                color: AppColors.greyLightColor,
              ),
            ))
      ],
    );
  }
}
