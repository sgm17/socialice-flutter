import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:socialice/constants/app_colors.dart';
import 'package:socialice/providers/event_provider/events_provider.dart';
import 'package:socialice/widgets/skelton.dart';

class AllEventsHeader extends ConsumerWidget {
  const AllEventsHeader({
    super.key,
    required this.cozy,
    this.handleCozyTap,
  });

  final bool cozy;
  final Function? handleCozyTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final eventsState = ref.watch(eventsProvider);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'All Events',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 28,
                color: AppColors.blackColor,
              ),
            ),
            eventsState.when(
              data: (data) {
                final events = data
                    .where((e) => e.endTimestamp.isBefore(DateTime.now()))
                    .toList();

                return Text(
                  '${events.length} Events In Total',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 22,
                    color: AppColors.greyLightColor,
                  ),
                );
              },
              loading: () => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Skelton(
                      height: 12,
                      width: 200,
                      borderRadius: 8,
                      isProfileImage: false),
                  SizedBox(
                    height: 20,
                  )
                ],
              ),
              error: (error, stackTrace) => SizedBox.shrink(),
            ),
          ],
        ),
        GestureDetector(
          onTap: handleCozyTap != null ? () => handleCozyTap!() : null,
          child: SizedBox(
            width: 40.0,
            height: 40.0,
            child: SvgPicture.asset(
              cozy
                  ? 'assets/vectors/view_cozy_icon.svg'
                  : 'assets/vectors/view_headline_icon.svg',
            ),
          ),
        ),
      ],
    );
  }
}
