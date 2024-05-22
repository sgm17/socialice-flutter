import 'package:flutter/material.dart';

class BlackContainerButton extends StatelessWidget {
  const BlackContainerButton({
    super.key,
    required this.text,
    required this.action,
  });

  final Function action;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => action(),
      child: Container(
        alignment: Alignment.center,
        height: 48.0,
        decoration: BoxDecoration(color: Colors.black),
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 16,
            color: Color(0xFFFFFFFF),
          ),
        ),
      ),
    );
  }
}
