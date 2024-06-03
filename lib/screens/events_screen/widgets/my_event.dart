import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:socialice/constants/app_colors.dart';
import 'package:socialice/dialogs/select_dialog/select_dialog.dart';
import 'package:socialice/domains/event_repository/src/models/event_model.dart';
import 'package:socialice/providers/event_provider/events_provider.dart';
import 'package:socialice/utils/date_parser.dart';

class MyEvent extends ConsumerWidget {
  const MyEvent({
    super.key,
    required this.event,
  });

  final EventModel event;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Future<void> _handleDelete() async {
      showDialog(
              context: context,
              builder: (context) =>
                  SelectDialog(message: "Do you want to delete the event?"))
          .then((value) async {
        if (value is bool && value) {
          await ref.read(eventsProvider.notifier).deleteEvent(id: event.id);
        }
      });
    }

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                height: 50,
                width: 50,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      event.image,
                    ),
                  ),
                ),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        child: Text(
                          event.participants!.length.toString(),
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: Color(0xFFFFFFFF),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      Icon(
                        Icons.person,
                        size: 18,
                        color: AppColors.whiteColor,
                      ),
                    ])),
            SizedBox(
              width: 16,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 3),
                  child: Text(
                    event.name,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Color(0xFF000000),
                    ),
                  ),
                ),
                Text(
                  formatMonthWordDayYear(event.startDate),
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: Color(0xFFC1C1CB),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 16,
            ),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: _handleEdit,
              child: Icon(
                Icons.edit_outlined,
                size: 28,
              ),
            ),
            SizedBox(width: 32),
            GestureDetector(
              onTap: _handleScanCode,
              child: Icon(
                Icons.qr_code_scanner_outlined,
                size: 28,
              ),
            ),
            SizedBox(width: 32),
            GestureDetector(
              onTap: _handleDelete,
              child: Icon(
                Icons.delete_outline_outlined,
                size: 28,
              ),
            )
          ],
        ),
      ],
    );
  }

  Future<void> _handleEdit() async {}

  void _handleScanCode() {}
}
