import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EmptyCommunities extends StatelessWidget {
  const EmptyCommunities({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 110,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFFC1C1CB)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Join a group',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: Color(0xFF1B1A1D),
            ),
          ),
          SizedBox(
            height: 4,
          ),
          Container(
            width: 14.6,
            height: 10.8,
            child: SizedBox(
              width: 14.6,
              height: 10.8,
              child: SvgPicture.asset(
                'assets/vectors/vector_59_x2.svg',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
