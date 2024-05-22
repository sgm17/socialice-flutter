import 'package:flutter/material.dart';
import 'package:socialice/constants/app_colors.dart';

class InputCommentValue extends StatelessWidget {
  const InputCommentValue({super.key, required this.placeholder});

  final String placeholder;

  @override
  Widget build(BuildContext context) {
    return TextField(
      // onChanged: (text) => ref.read(searchBarProvider.notifier).state = text,
      maxLength: 700,
      textAlignVertical: TextAlignVertical.center,
      style: TextStyle(
        color: AppColors.blackColor,
        fontSize: 16.0,
        fontWeight: FontWeight.w400,
      ),
      decoration: InputDecoration(
        isCollapsed: true,
        hintText: placeholder,
        hintStyle: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.w400,
          color: AppColors.greyLightColor,
        ),
      ),
    );
  }
}
