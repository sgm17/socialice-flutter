import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NoTicketsAvailable extends StatelessWidget {
  const NoTicketsAvailable({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.center,
        children: [
          SvgPicture.asset(
            'assets/vectors/ticket_1_group_x2.svg',
            height: 221,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'No Tickets Available',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 22,
                  color: Color(0xFF000000),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              SizedBox(
                width: 24.3,
                height: 25.8,
                child: SvgPicture.asset(
                  'assets/vectors/vector_10_x2.svg',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
