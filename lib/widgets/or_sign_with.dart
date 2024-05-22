import 'package:flutter/widgets.dart';

class OrSignWith extends StatelessWidget {
  const OrSignWith({
    super.key,
    required this.method,
  });

  final String method;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Flexible(
          child: Container(
            height: 1,
            decoration: BoxDecoration(
              color: Color(0xFFC1C1CB),
            ),
          ),
        ),
        SizedBox(
          width: 16,
        ),
        Text(
          'Or ${method} with',
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 16,
            color: Color(0xFFC1C1CB),
          ),
        ),
        SizedBox(
          width: 16,
        ),
        Flexible(
          child: Container(
            height: 1,
            decoration: BoxDecoration(
              color: Color(0xFFC1C1CB),
            ),
          ),
        ),
      ],
    );
  }
}
