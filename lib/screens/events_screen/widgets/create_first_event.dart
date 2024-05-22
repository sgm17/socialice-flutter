import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CreateFirstEvent extends StatelessWidget {
  const CreateFirstEvent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          alignment: Alignment.center,
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: Color(0xFFDDDDDD),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Container(
            width: 18.3,
            height: 19.4,
            child: SizedBox(
              width: 18.3,
              height: 19.4,
              child: SvgPicture.asset(
                'assets/vectors/vector_23_x2.svg',
              ),
            ),
          ),
        ),
        SizedBox(
          width: 16,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 3),
              child: Text(
                'Create Your First Event',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Color(0xFF000000),
                ),
              ),
            ),
            Text(
              'Add people and join the community',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 12,
                color: Color(0xFFC1C1CB),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
