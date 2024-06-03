import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:socialice/domains/community_repository/src/models/highlight_model.dart';
import 'package:socialice/constants/app_colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:socialice/providers/event_provider/events_provider.dart';
import 'package:socialice/utils/date_parser.dart';

class CommunityDoubleHighlightedEvent extends ConsumerWidget {
  const CommunityDoubleHighlightedEvent({
    super.key,
    required this.highlights,
  });

  final List<HighlightModel> highlights;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final events = ref.watch(eventsProvider).asData!.value;
    final event =
        events.where((e) => e.id == highlights[0].eventId).firstOrNull;

    if (event == null) return SizedBox.shrink();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.bottomLeft,
                padding: EdgeInsets.fromLTRB(20, 0, 0, 20),
                height: 183,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      highlights[0].image,
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
                          highlights.length.toString(),
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                            color: Color(0xFFFFFFFF),
                          ),
                        )
                      ]),
                ),
              ),
            ),
            SizedBox(
              width: 9,
            ),
            Expanded(
              child: Container(
                  height: 183,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        highlights[1].image,
                      ),
                    ),
                  )),
            ),
          ],
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
