import 'dart:io';

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignOauth2Items extends StatelessWidget {
  const SignOauth2Items({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Container(
              alignment: Alignment.center,
              height: 46,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xFFC1C1CB)),
                borderRadius: BorderRadius.circular(10),
              ),
              child: SizedBox(
                width: 33,
                height: 33,
                child: SvgPicture.asset(
                  'assets/vectors/facebook_icon_1_x2.svg',
                ),
              )),
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: Container(
            alignment: Alignment.center,
            height: 46,
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xFFC1C1CB)),
              borderRadius: BorderRadius.circular(10),
            ),
            child: SizedBox(
              width: 30,
              height: 30,
              child: SvgPicture.asset(
                'assets/vectors/google_icon_1_x2.svg',
              ),
            ),
          ),
        ),
        if (Platform.isIOS)
          SizedBox(
            width: 10,
          ),
        if (Platform.isIOS)
          Expanded(
            child: Container(
              alignment: Alignment.center,
              height: 46,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xFFC1C1CB)),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                width: 30,
                height: 30,
                padding: EdgeInsets.fromLTRB(3, 0.6, 3.3, 1.8),
                child: SizedBox(
                  width: 23.7,
                  height: 27.6,
                  child: SvgPicture.asset(
                    'assets/vectors/vector_68_x2.svg',
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
