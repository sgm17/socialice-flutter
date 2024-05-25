import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:socialice/domains/app_user_repository/src/models/app_user_model.dart';
import 'package:socialice/domains/app_user_repository/src/models/interest_model.dart';
import 'package:socialice/providers/app_user_provider/app_user_provider.dart';
import 'package:socialice/widgets/arrow_back.dart';
import 'package:socialice/widgets/black_container_button.dart';
import 'package:socialice/widgets/skelton.dart';
import 'package:socialice/widgets/user_interest.dart';

class InterestsScreen extends ConsumerWidget {
  const InterestsScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appUserState = ref.watch(appUserProvider);

    void handleUserInterestTap(InterestModel interest) {
      ref.read(appUserProvider.notifier).setInterestUpdate(interest);
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
                _buildInterestsList(
                    appUserState, handleUserInterestTap, context),
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
    );
  }

  _buildInterestsList(AsyncValue<AppUserModel> appUserState,
      Function handleUserInterestTap, BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width * .8;
    final List<Widget> rows = [];
    List<Widget> currentRow = [];
    double accumulatedWidth = 0;

    return appUserState.when(
        data: (appUser) {
          // get all the interests that a user has selected
          final appUserInterests = appUser.interests;
          // generate a new array that contains just each id
          final appUserInterestsIds =
              appUserInterests!.map((e) => e.id).toList();

          for (int i = 0; i < InterestModel.interests.length; i++) {
            final interest = InterestModel.interests[i];

            final interestWidth = calculateTextWidth(interest.name);

            // is selected if the interestId is contained inside the user interests
            final selected =
                appUserInterestsIds.contains(InterestModel.interests[i].id);

            if (accumulatedWidth + (interestWidth + 10) <= screenWidth) {
              // Add the interest to the current row
              currentRow.add(Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: GestureDetector(
                    onTap: () =>
                        handleUserInterestTap(InterestModel.interests[i]),
                    child: UserInterest(
                      interest: InterestModel.interests[i],
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
                      onTap: () =>
                          handleUserInterestTap(InterestModel.interests[i]),
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
        },
        error: (error, stackTrace) => SizedBox.shrink(),
        loading: () =>
            Skelton(height: 35, borderRadius: 10, isProfileImage: false));
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
