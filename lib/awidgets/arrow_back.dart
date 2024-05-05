import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ArrowBack extends StatelessWidget {
  final Color color;

  const ArrowBack({
    super.key,
    this.color = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pop(context),
      child: Container(
        alignment: Alignment.centerLeft,
        width: 24.0,
        height: 24.0,
        child: SvgPicture.asset(
          color: color,
          'assets/vectors/vector_14_x2.svg',
        ),
      ),
    );
  }
}
