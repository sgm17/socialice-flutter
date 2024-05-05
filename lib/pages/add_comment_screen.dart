import 'package:flutter/material.dart';
import 'package:socialice/app_colors.dart';
import 'package:socialice/awidgets/arrow_back.dart';
import 'dart:ui';
import 'package:socialice/awidgets/black_container_button.dart';

class AddCommentScreen extends StatelessWidget {
  const AddCommentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ArrowBack(),
              SizedBox(
                height: 16.0,
              ),
              Container(
                child: Text(
                  'Add a comment',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                    color: AppColors.blackColor,
                  ),
                ),
              ),
              SizedBox(
                height: 32.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 24, 0),
                    width: 28,
                    height: 28,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            'assets/images/add_comment_profile_image.png',
                          ),
                        ),
                      ),
                      child: Container(
                        width: 28,
                        height: 28,
                      ),
                    ),
                  ),
                  Text(
                    'Sergi Garcia',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: AppColors.blackColor,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 32.0,
              ),
              InputCommentValue(placeholder: 'Add a comment'),
              SizedBox(
                height: 32.0,
              ),
              BlackContainerButton(
                  text: 'Publish', action: () => Navigator.pop(context))
            ],
          ),
        ),
      ),
    );
  }
}

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
