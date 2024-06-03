import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:socialice/constants/app_colors.dart';
import 'package:socialice/domains/event_repository/src/models/event_model.dart';
import 'package:socialice/utils/date_parser.dart';
import 'package:socialice/widgets/black_container_button.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PastEventItem extends StatelessWidget {
  const PastEventItem({
    super.key,
    required this.event,
  });

  final EventModel event;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () => Navigator.pushNamed(context, '/EventScreen',
              arguments: {'eventId': event.id}),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      formatDayWordTime(event.startDate).toUpperCase(),
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Color(0xFFFFBC2F),
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      event.name,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Color(0xFF1B1A1D),
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      event.community.name,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: AppColors.blackColor,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                            color: Color(0xFF12D732),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Container(
                            width: 8.9,
                            height: 6.2,
                            child: SizedBox(
                              width: 8.9,
                              height: 6.2,
                              child: SvgPicture.asset(
                                'assets/vectors/vector_53_x2.svg',
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Text(
                          '${event.participants!.length} participants',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: AppColors.greyDarkColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 16,
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        event.image,
                      ),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x40000000),
                        offset: Offset(0, 4),
                        blurRadius: 2,
                      ),
                    ],
                  ),
                  child: Container(
                    width: 150,
                    height: 84.3,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 12,
        ),
        BlackContainerButton(
          text: 'Add a photo',
          action: () => throw UnimplementedError(),
        ),
      ],
    );
  }
}
