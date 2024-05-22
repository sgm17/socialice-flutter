import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:socialice/constants/app_colors.dart';

class CommunityMultipleHighlightedEvent extends StatelessWidget {
  const CommunityMultipleHighlightedEvent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.bottomLeft,
                padding: EdgeInsets.fromLTRB(20, 0, 0, 20),
                height: 183,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'assets/images/highlighted_moment_31_image.png',
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
                            '8',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                              color: Color(0xFFFFFFFF),
                            ),
                          )
                        ])),
              ),
            ),
            SizedBox(
              width: 9,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 87,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          'assets/images/highlighted_moment_32_image.png',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 9,
                  ),
                  Container(
                    height: 87,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          'assets/images/highlighted_moment_32_image.png',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 16,
        ),
        Text(
          'Pub Quiz',
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
          '24 abr',
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
