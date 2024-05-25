import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:socialice/providers/firebase_storage_provider/firebase_storage_notifier.dart';

final firebaseStorageProvider =
    StateNotifierProvider<FirebaseStorageNotifier, FirebaseStorage?>(
        (ref) => FirebaseStorageNotifier(ref));
