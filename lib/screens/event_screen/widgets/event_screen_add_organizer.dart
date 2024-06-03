import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:socialice/constants/app_colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:socialice/providers/event_provider/events_provider.dart';

class EventScreenAddOrganizer extends ConsumerStatefulWidget {
  const EventScreenAddOrganizer({
    required this.id,
    super.key,
  });

  final String id;

  @override
  ConsumerState<EventScreenAddOrganizer> createState() =>
      _EventScreenAddOrganizerState();
}

class _EventScreenAddOrganizerState
    extends ConsumerState<EventScreenAddOrganizer> {
  late TextEditingController controller;

  @override
  void initState() {
    controller = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(0, 0, 14, 0),
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xFFDDDDDD),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Container(
              alignment: Alignment.center,
              width: 40,
              height: 40,
              child: Container(
                height: 13,
                child: SizedBox(
                  height: 13,
                  child: SvgPicture.asset(
                    'assets/vectors/vector_67_x2.svg',
                  ),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Name',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: AppColors.blackColor,
                ),
              ),
              SizedBox(
                child: TextField(
                  textInputAction: TextInputAction.send,
                  onSubmitted: (value) async {
                    controller.clear();
                    await ref
                        .read(eventsProvider.notifier)
                        .updateOrganizers(eventId: widget.id, username: value);
                  },
                  maxLength: 30,
                  controller: controller,
                  textAlignVertical: TextAlignVertical.center,
                  decoration: InputDecoration(
                      counter: SizedBox.shrink(),
                      border: InputBorder.none,
                      isCollapsed: true,
                      hintText: '@username',
                      hintStyle: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w400,
                        color: AppColors.greyLightColor,
                      )),
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: AppColors.blackColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
