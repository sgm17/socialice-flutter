import 'package:flutter/material.dart';
import 'package:socialice/constants/app_colors.dart';

class Skelton extends StatelessWidget {
  const Skelton(
      {super.key,
      required this.height,
      this.width,
      required this.borderRadius,
      required this.isProfileImage});

  final double height, borderRadius;

  final double? width;

  final bool isProfileImage;

  @override
  Widget build(BuildContext context) {
    if (!isProfileImage)
      return Container(
        height: height,
        width: width,
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
            color: AppColors.blackColor.withOpacity(0.04),
            borderRadius: BorderRadius.circular(borderRadius)),
      );
    else
      return CircleAvatar(
        radius: height / 2,
        backgroundColor: AppColors.blackColor.withOpacity(0.04),
      );
  }
}
