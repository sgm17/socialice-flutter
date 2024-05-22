import 'package:flutter/material.dart';
import 'package:socialice/constants/app_colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PrivateChatBottomBar extends StatelessWidget {
  const PrivateChatBottomBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border(
              top: BorderSide(color: AppColors.greyLightColor, width: 1))),
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: TextField(
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
                        borderSide: BorderSide(
                            color: AppColors.greyLightColor, width: 1)),
                    isCollapsed: true,
                    hintText: 'Message...',
                    hintStyle: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400,
                      color: AppColors.blackColor,
                    ))),
          ),
          SizedBox(
            width: 6,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: SizedBox(
                height: 40,
                width: 40,
                child: SvgPicture.asset('assets/vectors/send_icon.svg')),
          )
        ],
      ),
    );
  }
}
