import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class UserInterest extends StatelessWidget {
  const UserInterest({
    super.key,
    required this.interestName,
    required this.selected,
  });

  final bool selected;
  final String interestName;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: selected ? Color(0xFFDDDDDD) : Colors.transparent,
          borderRadius: BorderRadius.circular(4),
          border:
              selected ? null : Border.all(color: Color(0xFFDDDDDD), width: 1)),
      child: Text(
        interestName,
        style: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 14,
          color: Color(0xFF1B1A1D),
        ),
      ),
    );
  }
}
