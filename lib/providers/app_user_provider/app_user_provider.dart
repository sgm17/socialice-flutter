import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:socialice/domains/app_user_repository/src/models/app_user_model.dart';
import 'package:socialice/providers/app_user_provider/app_user_notifier.dart';

final appUserProvider =
    StateNotifierProvider<AppUserNotifier, AsyncValue<AppUserModel>>((ref) {
  return AppUserNotifier(ref);
});
