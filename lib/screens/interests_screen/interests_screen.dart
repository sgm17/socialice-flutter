import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:socialice/domains/app_user_repository/src/models/interest_model.dart';
import 'package:socialice/providers/app_user_provider/app_user_provider.dart';
import 'package:socialice/providers/interests_provider/interests_future_provider.dart';
import 'package:socialice/widgets/arrow_back.dart';
import 'package:socialice/widgets/black_container_button.dart';
import 'package:socialice/widgets/user_interest.dart';

class InterestsScreen extends ConsumerStatefulWidget {
  const InterestsScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<InterestsScreen> createState() => _InterestsScreenState();
}

class _InterestsScreenState extends ConsumerState<InterestsScreen> {
  late List<InterestModel> interests;

  @override
  void initState() {
    super.initState();

    final initialStateInterests =
        ref.read(appUserProvider).asData!.value.interests ?? [];

    interests = [...initialStateInterests];
  }

  void _handleInterestChange(InterestModel interest) {
    final updatedInterests = interests.contains(interest)
        ? interests.where((i) => i != interest)
        : [interest, ...interests];

    setState(() {
      interests = updatedInterests.toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    final interestsState = ref.read(interestsFutureProvider).asData!.value;

    Widget _buildInterestsList() {
      final double screenWidth = MediaQuery.of(context).size.width * .8;
      final List<Widget> rows = [];
      List<Widget> currentRow = [];
      double accumulatedWidth = 0;

      // generate a new array that contains just each id
      final appUserInterestsIds = interests.map((e) => e.id).toList();

      for (int i = 0; i < interestsState.length; i++) {
        final interest = interestsState[i];

        final interestWidth = calculateTextWidth(interest.name);

        // is selected if the interestId is contained inside the user interests
        final selected = appUserInterestsIds.contains(interest.id);

        if (accumulatedWidth + (interestWidth + 10) <= screenWidth) {
          // Add the interest to the current row
          currentRow.add(Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: GestureDetector(
                onTap: () => _handleInterestChange(interest),
                child: UserInterest(
                  interest: interest,
                  selected: selected,
                )),
          ));
          accumulatedWidth += (interestWidth + 10);
        } else {
          // Start a new row
          rows.add(
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: currentRow,
              ),
            ),
          );
          // Reset accumulatedWidth and currentRow for the new row
          accumulatedWidth = interestWidth;
          currentRow = [
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: GestureDetector(
                  onTap: () => _handleInterestChange(interest),
                  child: UserInterest(
                    interest: interest,
                    selected: selected,
                  )),
            )
          ];
        }
      }

      if (currentRow.isNotEmpty) {
        rows.add(
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: currentRow,
            ),
          ),
        );
      }

      return Column(
        children: rows,
      );
    }

    return PopScope(
      onPopInvoked: (didPop) async {
        await ref.read(appUserProvider.notifier).setInterestsUpdate(interests);
      },
      child: Scaffold(
        body: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 32,
                  ),
                  ArrowBack(),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    'Search new interests',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      color: Color(0xFF1B1A1D),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Pick your favorite interests to find gorups and events related to them',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Color(0xFF1B1A1D),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  _buildInterestsList(),
                  SizedBox(
                    height: 32,
                  ),
                  BlackContainerButton(
                      text: 'Save interests',
                      action: () => Navigator.pop(context)),
                  SizedBox(
                    height: 48,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  double calculateTextWidth(String text) {
    final TextPainter textPainter = TextPainter(
      text: TextSpan(
          text: text,
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14,
              color: Color(0xFF1B1A1D))),
      textDirection: TextDirection.ltr,
    );
    textPainter.layout();
    return textPainter.width;
  }
}
