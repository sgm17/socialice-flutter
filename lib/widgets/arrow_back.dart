import 'package:flutter/material.dart';

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
      child: Icon(
        Icons.arrow_back_ios_rounded,
        size: 28,
        color: color,
      ),
    );
  }
}
