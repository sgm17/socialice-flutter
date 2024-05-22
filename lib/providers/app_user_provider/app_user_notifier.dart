import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:socialice/domains/app_user_repository/src/models/app_user_model.dart';
import 'package:socialice/domains/app_user_repository/src/models/interest_model.dart';
import 'package:socialice/providers/app_user_provider/app_user_viewmodel_provider.dart';
import 'package:socialice/screens/select_city_screen/select_city_screen.dart';

class AppUserNotifier extends StateNotifier<AsyncValue<AppUserModel>> {
  final Ref ref;

  AppUserNotifier(
    this.ref,
  ) : super(const AsyncValue<AppUserModel>.loading()) {
    initialize();
  }

  Future<void> initialize() async {
    try {
      final user = await ref.read(appUserViewModelProvider).getUser();
      state = AsyncValue.data(user);
    } catch (e) {
      state = AsyncValue.error(e, StackTrace.current);
    }
  }

  void setInterestUpdate(InterestModel interest) {
    try {
      final currentInterests = state.asData?.value.interests ?? [];
      final interestIndex =
          currentInterests.indexWhere((e) => e.id == interest.id);

      if (interestIndex != -1) {
        // the interest is already in the list
        final updatedInterests =
            currentInterests.where((e) => e.id != interest.id).toList();

        state = AsyncValue.data(
            state.asData!.value.copyWith(interests: updatedInterests));
      } else {
        // the interest has to be added into the list
        currentInterests.add(interest);

        state = AsyncValue.data(
            state.asData!.value.copyWith(interests: currentInterests));
      }
    } catch (e) {
      state = AsyncValue.error(e, StackTrace.current);
    }
  }

  void setLocation(Suggestion suggestion) {
    try {
      state = AsyncValue.data(state.asData!.value.copyWith(
          location: suggestion.displayName,
          latitude: suggestion.latitude,
          longitude: suggestion.longitude));
    } catch (e) {
      state = AsyncValue.error(e, StackTrace.current);
    }
  }
}
