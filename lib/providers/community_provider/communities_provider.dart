import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:socialice/domains/community_repository/src/models/community_model.dart';
import 'package:socialice/providers/community_provider/communities_notifier.dart';

final communitiesProvider = StateNotifierProvider<CommunitiesNotifier,
    AsyncValue<List<CommunityModel>>>((ref) {
  return CommunitiesNotifier(ref);
});
