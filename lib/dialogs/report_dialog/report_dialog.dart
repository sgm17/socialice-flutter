import 'package:flutter/material.dart';
import 'package:socialice/constants/app_colors.dart';

class ReportDialog extends StatelessWidget {
  const ReportDialog({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: GestureDetector(
          onTap: () => Navigator.of(context).pop(true),
          child: Material(
            child: Container(
              height: 50,
              alignment: Alignment.center,
              width: double.infinity,
              decoration: BoxDecoration(color: AppColors.whiteColor),
              child: Text(
                text,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: AppColors.blackColor,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
