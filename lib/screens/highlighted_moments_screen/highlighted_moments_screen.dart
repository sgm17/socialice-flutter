import 'package:socialice/providers/event_provider/events_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:socialice/utils/date_parser.dart';

class HighlightedMomentsScreen extends ConsumerStatefulWidget {
  const HighlightedMomentsScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<HighlightedMomentsScreen> createState() =>
      _HighlightedMomentsScreenState();
}

class _HighlightedMomentsScreenState
    extends ConsumerState<HighlightedMomentsScreen> {
  int _currentPictureIndex = 0;

  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentPictureIndex);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> args =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    final String eventId = args['eventId'];

    final events = ref.watch(eventsProvider).asData!.value;
    final event = events.firstWhere((e) => e.id == eventId);

    final pictures = event.highlights!;

    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 32,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: Icon(Icons.close_rounded),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      '${_currentPictureIndex + 1} of ${pictures.length}',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 23,
                        color: Color(0xFF000000),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.add_rounded),
                        Icon(Icons.share_rounded),
                        Icon(Icons.more_vert_rounded)
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 32.0),
                child: PageView(
                    controller: _pageController,
                    onPageChanged: (value) {
                      setState(() {
                        _currentPictureIndex = value;
                      });
                    },
                    children: [
                      for (int i = 0; i < pictures.length; i++)
                        Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fitWidth,
                              image: NetworkImage(
                                pictures[i].image,
                              ),
                            ),
                          ),
                        ),
                    ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Added by ${pictures[_currentPictureIndex].user.name} ${pictures[_currentPictureIndex].user.surname} ${formatMonthWordDay(pictures[_currentPictureIndex].createdAt).toLowerCase()}',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Color(0xFF000000),
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              height: 1,
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFF000000),
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, "/EventScreen",
                    arguments: {"eventId": eventId});
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.event_rounded,
                          size: 14,
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Text(
                          event.name,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: Color(0xFF000000),
                          ),
                        ),
                      ],
                    ),
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 14,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 32,
            )
          ],
        ),
      ),
    );
  }
}
