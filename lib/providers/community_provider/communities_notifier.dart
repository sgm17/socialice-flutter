import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:socialice/domains/community_repository/src/models/community_model.dart';
import 'package:socialice/providers/community_provider/community_viewmodel_provider.dart';
import 'package:socialice/providers/http_provider/http_viewmodel_provider.dart';

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

  Future<CommunityModel?> createCommunity(
      {required String name,
      required String description,
      required String image,
      required String categoryId,
      required String city}) async {
    try {
      final communities = state.asData!.value;
      final community = await ref
          .read(httpViewmodelProvider)
          .createCommunityModel(
              image: image,
              name: name,
              city: city,
              description: description,
              categoryId: categoryId);
      final updatedCommunities = [community, ...communities];
      state = AsyncValue.data(updatedCommunities);
      return community;
    } catch (e) {
      state = AsyncValue.error(e, StackTrace.current);
      return null;
    }
  }
}
