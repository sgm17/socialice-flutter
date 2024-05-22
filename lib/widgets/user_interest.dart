import 'package:flutter/material.dart';
import 'package:socialice/domains/app_user_repository/src/models/interest_model.dart';

class UserInterest extends StatelessWidget {
  const UserInterest({
    super.key,
    required this.interest,
    required this.selected,
  });

  final InterestModel interest;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: selected ? Color(0xFFDDDDDD) : Colors.transparent,
          borderRadius: BorderRadius.circular(4),
          border: Border.all(color: Color(0xFFDDDDDD), width: 1)),
      child: Text(
        interest.name,
        style: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 14,
          color: Color(0xFF1B1A1D),
        ),
      ),
    );
  }
}
