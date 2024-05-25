import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:socialice/domains/app_user_repository/src/models/app_user_model.dart';
import 'package:socialice/providers/user_profile_provider/user_profile_notifier.dart';

final userProfileProvider = StateNotifierProvider.family<UserProfileNotifier,
    AsyncValue<AppUserModel>, String>((ref, userId) {
  return UserProfileNotifier(ref, userId);
});
