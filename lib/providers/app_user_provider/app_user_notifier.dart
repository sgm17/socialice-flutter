import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:socialice/domains/app_user_repository/src/models/app_user_model.dart';
import 'package:socialice/domains/app_user_repository/src/models/interest_model.dart';
import 'package:socialice/providers/app_user_provider/app_user_viewmodel_provider.dart';
import 'package:socialice/providers/event_provider/events_provider.dart';
import 'package:socialice/providers/firebase_storage_provider/firebase_storage_provider.dart';
import 'package:socialice/screens/select_city_screen/select_city_screen.dart';
import 'dart:io';

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
      final interests = state.asData?.value.interests;
      final interestIndex = interests?.indexWhere((e) => e.id == interest.id);

      state = AsyncValue.data(state.asData!.value.copyWith(
          interests: interestIndex != -1
              ? interests?.where((e) => e.id != interest.id).toList()
              : [interest, ...interests!]));
    } catch (e) {
      state = AsyncValue.error(e, StackTrace.current);
    }
  }

  Future<void> toggleEventFavourite(String eventId) async {
    try {
      final events = ref.read(eventsProvider).asData?.value;
      final event = events?.where((e) => e.id == eventId).first;
      List<String>? newFavourites = [...state.asData!.value.favourites!];
      try {
        if (newFavourites.contains(event?.id) == true) {
          newFavourites = newFavourites.where((e) => e != event?.id).toList();
        } else {
          newFavourites = [event!.id, ...newFavourites];
        }
        state = AsyncValue.data(
            state.asData!.value.copyWith(favourites: newFavourites));
      } catch (e) {
        print(e);
      }
    } catch (e) {
      state = AsyncValue.error(e, StackTrace.current);
    }
  }

  Future<void> updateMyProfile(
      {required String? name,
      required String? surname,
      required String? username,
      required Suggestion? suggestion,
      required String? description,
      required File? profileImage}) async {
    try {
      final oldState = state.asData!.value;

      String? updatedProfileImage = oldState.profileImage;

      if (profileImage != null) {
        updatedProfileImage = await ref
            .read(firebaseStorageProvider.notifier)
            .uploadFileToFirebaseStorage(profileImage, oldState);
      }

      final newAppUserModel = await ref
          .read(appUserViewModelProvider)
          .updateUser(
              name: name ?? oldState.name,
              surname: surname ?? oldState.surname,
              username: username ?? oldState.username,
              description: description ?? oldState.description!,
              profileImage: updatedProfileImage,
              location: suggestion?.displayName ?? oldState.location,
              latitude: suggestion?.latitude ?? oldState.latitude,
              longitude: suggestion?.longitude ?? oldState.longitude);

      state = AsyncValue.data(newAppUserModel);
    } catch (e) {
      state = AsyncValue.error(e, StackTrace.current);
    }
  }
}
