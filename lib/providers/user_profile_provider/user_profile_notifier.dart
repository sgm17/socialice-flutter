import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:socialice/domains/app_user_repository/src/models/app_user_model.dart';
import 'package:socialice/providers/app_user_provider/app_user_viewmodel_provider.dart';

class UserProfileNotifier extends StateNotifier<AsyncValue<AppUserModel>> {
  final Ref ref;
  final String userId;

  UserProfileNotifier(
    this.ref,
    this.userId,
  ) : super(const AsyncValue<AppUserModel>.loading()) {
    initialize();
  }

  Future<void> initialize() async {
    try {
      final user =
          await ref.read(appUserViewModelProvider).getUserById(id: userId);
      state = AsyncValue.data(user);
    } catch (e) {
      state = AsyncValue.error(e, StackTrace.current);
    }
  }
}
