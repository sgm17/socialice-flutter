import 'package:flutter/material.dart';
import 'package:socialice/constants/app_colors.dart';

class EditProfileDescription extends StatelessWidget {
  const EditProfileDescription({
    super.key,
    required this.initialValue,
  });

  final String initialValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Description",
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
            initialValue: initialValue,
            maxLength: 100,
            maxLines: 3,
            textAlignVertical: TextAlignVertical.center,
            style: TextStyle(
              color: AppColors.blackColor,
              fontSize: 14.0,
              fontWeight: FontWeight.w400,
            ),
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(16),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide:
                      BorderSide(color: AppColors.greyLightColor, width: 1)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide:
                      BorderSide(color: AppColors.greyLightColor, width: 1)),
              isCollapsed: true,
              hintText: "Description",
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
