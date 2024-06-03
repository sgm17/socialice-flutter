import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:socialice/constants/app_colors.dart';
import 'package:socialice/domains/community_repository/src/models/highlight_model.dart';
import 'package:socialice/providers/event_provider/events_provider.dart';
import 'package:socialice/utils/date_parser.dart';

class CommunitySingleHighlightedEvent extends ConsumerWidget {
  const CommunitySingleHighlightedEvent({
    super.key,
    required this.highlight,
  });

  final HighlightModel highlight;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final events = ref.watch(eventsProvider).asData!.value;
    final event = events.where((e) => e.id == highlight.eventId).firstOrNull;

    if (event == null) return SizedBox.shrink();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          alignment: Alignment.bottomLeft,
          padding: EdgeInsets.fromLTRB(20, 0, 0, 20),
          height: 183,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                highlight.image,
              ),
            ),
          ),
          child: Container(
            alignment: Alignment.center,
            width: 48,
            height: 36,
            decoration: BoxDecoration(
              color: AppColors.blackColor,
            ),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 20.5,
                    height: 13,
                    child: SvgPicture.asset(
                      'assets/vectors/vector_65_x2.svg',
                    ),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    '1',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      color: Color(0xFFFFFFFF),
                    ),
                  )
                ]),
          ),
        ),
        SizedBox(
          height: 16,
        ),
        Text(
          event.name,
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 18,
            color: Color(0xFF000000),
          ),
        ),
        SizedBox(
          height: 3,
        ),
        Text(
          formatMonthWordDay(event.startDate),
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 18,
            color: Color(0xFFC1C1CB),
          ),
        ),
      ],
    );
  }
}
