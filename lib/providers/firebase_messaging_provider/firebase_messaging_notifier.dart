import 'package:socialice/providers/http_provider/http_viewmodel_provider.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'dart:async';

class FirebaseMessagingNotifier extends StateNotifier<String?> {
  StreamSubscription<String?>? cloudTokenListener;
  final User? user;
  final Ref ref;

  FirebaseMessagingNotifier(this.ref, this.user) : super(null) {
    initialize();
  }

  Future<void> initialize() async {
    final messaging = FirebaseMessaging.instance;

    cloudTokenListener = messaging.onTokenRefresh.listen(onCloudTokenChanges);

    if (user != null) {
      final cloudToken = await messaging.getToken();
      if (cloudToken != null) {
        await onCloudTokenChanges(cloudToken);
      }
    }
  }

  Future<void> onCloudTokenChanges(String cloudToken) async {
    await ref
        .read(httpViewmodelProvider)
        .updateCloudToken(cloudToken: cloudToken);
  }

  @override
  void dispose() {
    cloudTokenListener?.cancel();
    super.dispose();
  }
}
