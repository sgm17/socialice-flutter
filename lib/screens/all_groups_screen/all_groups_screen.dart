import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:socialice/constants/app_colors.dart';
import 'package:socialice/domains/community_repository/src/models/community_model.dart';
import 'package:socialice/providers/app_user_provider/app_user_provider.dart';
import 'package:socialice/providers/community_provider/communities_provider.dart';
import 'package:socialice/widgets/arrow_back.dart';
import 'package:socialice/widgets/black_container_button.dart';

class AllGroupsScreen extends ConsumerWidget {
  const AllGroupsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final communities = ref.watch(communitiesProvider).asData!.value;

    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 32,
            ),
            ArrowBack(),
            SizedBox(
              height: 16,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'All Groups',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 28,
                    color: AppColors.blackColor,
                  ),
                ),
                Text(
                  '${communities.length} Groups In Total',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 22,
                    color: AppColors.greyLightColor,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Expanded(
              child: ListView.separated(
                itemBuilder: (BuildContext context, int index) {
                  return AllGroupsItem(
                    community: communities[index],
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    height: 16,
                  );
                },
                itemCount: communities.length,
              ),
            )
          ],
        ),
      )),
    );
  }
}

class AllGroupsItem extends ConsumerWidget {
  const AllGroupsItem({
    super.key,
    required this.community,
  });

  final CommunityModel community;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final lastFourMembers = community.members!.length >= 4
        ? community.members!.sublist(0, 4)
        : community.members;

    final user = ref.watch(appUserProvider).asData!.value;
    final isMember = community.members!.map((e) => e.id).contains(user.id);

    Future<void> _handleJoinCommunity() async {
      final res = await ref
          .read(communitiesProvider.notifier)
          .joinCommunity(communityId: community.id);
      if (res) {
        Navigator.pushNamed(context, "/JoinedCommunityScreen",
            arguments: {"communityId": community.id});
      }
    }

    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, "/CommunityScreen",
            arguments: {"communityId": community.id});
      },
      child: Container(
        padding: EdgeInsets.all(16),
        height: 212.0,
        decoration: BoxDecoration(
            color: AppColors.whiteColor,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Color(0x40000000),
                offset: Offset(0, 4),
                blurRadius: 2,
              ),
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(community.image))),
                ),
                SizedBox(
                  width: 12,
                ),
                Text(
                  community.name,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                    color: AppColors.blackColor,
                  ),
                ),
              ],
            ),
            Text(
              community.description,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: AppColors.greyLightColor,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 4,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                if (lastFourMembers!.isNotEmpty)
                  Expanded(
                    child: SizedBox(
                      height: 40,
                      child: Stack(
                        children: [
                          if (lastFourMembers.length >= 4)
                            Container(
                              height: 40,
                              width: 40,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: AppColors.blackColor,
                              ),
                              child: Text(
                                '+${lastFourMembers.length - 4}',
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                  color: AppColors.blackColor,
                                ),
                              ),
                            ),
                          for (int i = lastFourMembers.length - 1; i >= 0; i--)
                            Positioned(
                                left: i * 30,
                                child: Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(
                                          width: 2,
                                          color: AppColors.blackColor),
                                      image: lastFourMembers[i].profileImage ==
                                              null
                                          ? DecorationImage(
                                              fit: BoxFit.cover,
                                              image: AssetImage(
                                                  "assets/images/default_avatar.png"))
                                          : DecorationImage(
                                              fit: BoxFit.cover,
                                              image: NetworkImage(
                                                  lastFourMembers[i]
                                                      .profileImage!))),
                                ))
                        ],
                      ),
                    ),
                  ),
                if (!isMember && community.owner.id != user.id)
                  BlackContainerButton(
                      text: "+ Join", action: () => _handleJoinCommunity())
              ],
            )
          ],
        ),
      ),
    );
  }
}
