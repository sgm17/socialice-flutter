import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:socialice/domains/community_repository/src/models/community_model.dart';
import 'package:socialice/providers/app_user_provider/app_user_provider.dart';
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
      print(e);
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
      ref.read(appUserProvider.notifier).createAppUserCommunity(community);
      return community;
    } catch (e) {
      print(e);
      state = AsyncValue.error(e, StackTrace.current);
      return null;
    }
  }

  Future<bool> joinCommunity({required String communityId}) async {
    try {
      final communities = state.asData!.value;
      final community =
          communities.where((e) => e.id == communityId).firstOrNull;
      final appUser = ref.read(appUserProvider).value!;

      if (community == null) return false;

      CommunityModel updatedCommunity;

      final isMember = community.members!.map((e) => e.id).contains(appUser.id);

      if (isMember) {
        updatedCommunity = community.copyWith(
            members:
                community.members!.where((e) => e.id != appUser.id).toList());
      } else {
        updatedCommunity =
            community.copyWith(members: [appUser, ...community.members!]);
      }

      ref.read(appUserProvider.notifier).joinEvent(eventId: communityId);

      state = AsyncValue.data(communities
          .map((e) => e.id == communityId ? updatedCommunity : e)
          .toList());

      await ref
          .read(httpViewmodelProvider)
          .updateCommunityMembers(communityId: communityId);
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }
}
