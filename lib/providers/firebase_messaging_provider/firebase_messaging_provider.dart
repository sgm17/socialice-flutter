import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:socialice/providers/firebase_messaging_provider/firebase_messaging_notifier.dart';
import 'package:socialice/providers/firebase_user_provider/firebase_user_provider.dart';

final firebaseMessagingProvider =
    StateNotifierProvider<FirebaseMessagingNotifier, String?>((ref) {
  final firebaseUserState = ref.watch(firebaseUserProvider);
  final firebaseMessagingState =
      FirebaseMessagingNotifier(ref, firebaseUserState);

  return firebaseMessagingState;
});
