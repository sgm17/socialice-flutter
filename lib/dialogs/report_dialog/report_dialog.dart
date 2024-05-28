import 'package:flutter/material.dart';
import 'package:socialice/constants/app_colors.dart';

class ReportDialog extends StatelessWidget {
  const ReportDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: GestureDetector(
          onTap: () => Navigator.of(context).pop(true),
          child: Container(
            height: 50,
            alignment: Alignment.center,
            width: double.infinity,
            decoration: BoxDecoration(color: AppColors.whiteColor),
            child: Text(
              "Report this comment",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: AppColors.blackColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
