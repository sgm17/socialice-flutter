import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:socialice/constants/app_colors.dart';

class CommunitySingleHighlightedEvent extends StatelessWidget {
  const CommunitySingleHighlightedEvent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          alignment: Alignment.bottomLeft,
          padding: EdgeInsets.fromLTRB(20, 0, 0, 20),
          height: 183,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                'assets/images/highlighted_moment_1_image.png',
              ),
            ),
          ),
          child: Container(
            alignment: Alignment.center,
            width: 48,
            height: 36,
            decoration: BoxDecoration(
              color: AppColors.blackColor,
            ),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 20.5,
                    height: 13,
                    child: SvgPicture.asset(
                      'assets/vectors/vector_65_x2.svg',
                    ),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    '1',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      color: Color(0xFFFFFFFF),
                    ),
                  )
                ]),
          ),
        ),
        SizedBox(
          height: 16,
        ),
        Text(
          'Exquisite Together - Marktküche Tasting Dinner (Limited Capacity)',
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 18,
            color: Color(0xFF000000),
          ),
        ),
        SizedBox(
          height: 3,
        ),
        Text(
          'Hace 7 días',
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 18,
            color: Color(0xFFC1C1CB),
          ),
        ),
      ],
    );
  }
}
