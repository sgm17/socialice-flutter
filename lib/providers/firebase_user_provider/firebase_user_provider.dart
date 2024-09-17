import 'package:socialice/providers/firebase_user_provider/firebase_user_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:firebase_auth/firebase_auth.dart';

final firebaseUserProvider = StateNotifierProvider<FirebaseUserNotifier, User?>(
    (ref) => FirebaseUserNotifier(ref));
