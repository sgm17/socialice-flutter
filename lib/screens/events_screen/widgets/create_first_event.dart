import 'package:socialice/providers/event_provider/events_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/widgets.dart';
import 'dart:convert';

class CreateFirstEvent extends ConsumerWidget {
  const CreateFirstEvent({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Future<void> _handleCreateEvent() async {
      final eventJson =
          await Navigator.pushNamed(context, "/CreateEventScreen");
      if (eventJson is String? && eventJson != null) {
        final json = jsonDecode(eventJson);

        final createdEvent = await ref
            .read(eventsProvider.notifier)
            .createEvent(
                name: json["name"],
                description: json["description"],
                image: json["image"],
                placeName: json["placeName"],
                completeAddress: json["completeAddress"],
                communityId: json["communityId"],
                startDate: json["startDate"],
                endDate: json["endDate"],
                latitude: json["latitude"],
                longitude: json["longitude"],
                price: json["price"],
                priceWithoutDiscount: json["priceWithoutDiscount"],
                eventType: json["eventType"]);

        if (createdEvent != null) {
          Navigator.pushNamed(context, "/EventScreen",
              arguments: {'eventId': createdEvent.id});
        }
      }
    }

    return GestureDetector(
      onTap: _handleCreateEvent,
      child: Row(
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
      ),
    );
  }
}
