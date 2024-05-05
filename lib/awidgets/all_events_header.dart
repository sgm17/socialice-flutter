import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:socialice/app_colors.dart';

class AllEventsHeader extends StatelessWidget {
  const AllEventsHeader({
    super.key,
    required this.cozy,
    this.handleCozyTap,
  });

  final bool cozy;
  final Function? handleCozyTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'All Events',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 28,
                color: AppColors.blackColor,
              ),
            ),
            Text(
              '0 Events In Total',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 22,
                color: AppColors.greyLightColor,
              ),
            ),
          ],
        ),
        GestureDetector(
          onTap: handleCozyTap != null ? () => handleCozyTap!() : null,
          child: SizedBox(
            width: 40.0,
            height: 40.0,
            child: SvgPicture.asset(
              cozy
                  ? 'assets/vectors/view_cozy_icon.svg'
                  : 'assets/vectors/view_headline_icon.svg',
            ),
          ),
        ),
      ],
    );
  }
}
