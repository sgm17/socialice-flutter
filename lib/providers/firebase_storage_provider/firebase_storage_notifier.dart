import 'package:socialice/providers/app_user_provider/app_user_provider.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'dart:io';

class FirebaseStorageNotifier extends StateNotifier<FirebaseStorage?> {
  final Ref ref;

  FirebaseStorageNotifier(this.ref) : super(null) {
    initialize();
  }

  void initialize() {
    final firebaseStorage = FirebaseStorage.instance;
    state = firebaseStorage;
  }

  Future<String> uploadFileToFirebaseStorage(File file) async {
    try {
      final user = ref.read(appUserProvider).asData!.value;
      final now = DateTime.now().millisecondsSinceEpoch;
      final extension = file.path.split("/").last.split(".").last;
      final filename = "${now}_${user.id}.${extension}";

      final storageRef = FirebaseStorage.instance.ref().child(filename);
      await storageRef.putFile(file);

      String downloadURL = await storageRef.getDownloadURL();
      return downloadURL;
    } catch (e) {
      throw Exception('Failed to upload file: $e');
    }
  }
}
