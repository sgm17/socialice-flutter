import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:socialice/domains/event_repository/src/models/event_type.dart';
import 'package:socialice/providers/event_provider/events_provider.dart';
import 'package:socialice/utils/date_parser.dart';
import 'package:socialice/widgets/arrow_back.dart';
import 'package:socialice/widgets/black_container_button.dart';

class ConfirmationScreen extends ConsumerWidget {
  const ConfirmationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Map<String, dynamic> args =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    final String eventId = args['eventId'];

    final events = ref.watch(eventsProvider).asData!.value;
    final event = events.where((e) => e.id == eventId).firstOrNull;

    if (event == null) {
      return SizedBox.shrink();
    }

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 32,
              ),
              Align(alignment: Alignment.centerLeft, child: ArrowBack()),
              SizedBox(
                height: 64,
              ),
              Text(
                'We wait for you there!',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 24,
                  color: Color(0xFF1B1A1D),
                ),
              ),
              SizedBox(
                height: 14.0,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 8),
                    child: Text(
                      event.name,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                        color: Color(0xFF000000),
                      ),
                    ),
                  ),
                  Text(
                    formatDayWordTime(event.startDate),
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      color: Color(0xFFC1C1CB),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 32,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  if (event.eventType == EventType.payment)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BlackContainerButton(
                          text: 'Show the ticket',
                          action: () => Navigator.pushNamed(
                              context, '/TicketDetailScreen'),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                      ],
                    ),
                  BlackContainerButton(
                    text: 'Add to the calendar',
                    action: _handleAddToTheCalendar,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  GestureDetector(
                    onTap: _handleSendToFriend,
                    child: Container(
                      height: 48,
                      alignment: Alignment.center,
                      color: Colors.transparent,
                      child: Text(
                        'Send to a friend',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: Color(0xFF3F8DFD),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _handleAddToTheCalendar() async {
    // TODO: implement add to calendar functionality
  }

  Future<void> _handleSendToFriend() async {
    // TODO: implement send this event to a friend functionality
  }
}
