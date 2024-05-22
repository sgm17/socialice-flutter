import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:socialice/domains/community_repository/src/models/community_model.dart';
import 'package:socialice/providers/community_provider/community_viewmodel_provider.dart';

class CommunitiesNotifier
    extends StateNotifier<AsyncValue<List<CommunityModel>>> {
  final Ref ref;

  CommunitiesNotifier(
    this.ref,
  ) : super(const AsyncValue<List<CommunityModel>>.loading()) {
    initialize();
  }

  Future<void> initialize() async {
    try {
      final communities =
          await ref.read(communityViewmodelProvider).getCommunities();
      state = AsyncValue.data(communities);
    } catch (e) {
      state = AsyncValue.error(e, StackTrace.current);
    }
  }
}
