import 'package:flutter/material.dart';
import 'package:socialice/constants/app_colors.dart';

class BlackContainerButton extends StatelessWidget {
  const BlackContainerButton(
      {super.key,
      required this.text,
      required this.action,
      this.disabled = false});

  final Function action;
  final String text;
  final bool disabled;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: disabled ? null : () => action(),
      child: Container(
        alignment: Alignment.center,
        height: 48.0,
        decoration: BoxDecoration(
            color: disabled ? Color(0xFF9E9E9E) : AppColors.blackColor),
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 16,
            color: Color(0xFFFFFFFF),
          ),
        ),
      ),
    );
  }
}
