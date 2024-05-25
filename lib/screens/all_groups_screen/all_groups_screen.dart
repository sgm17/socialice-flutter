import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:socialice/constants/app_colors.dart';
import 'package:socialice/domains/community_repository/src/models/community_model.dart';
import 'package:socialice/providers/community_provider/communities_provider.dart';
import 'package:socialice/widgets/arrow_back.dart';
import 'package:socialice/widgets/black_container_button.dart';

class AllGroupsScreen extends ConsumerWidget {
  const AllGroupsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final communities = ref.watch(communitiesProvider).asData?.value ?? [];

    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ArrowBack(),
            SizedBox(
              height: 32,
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
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                for (int i = 0; i < communities.length; i++)
                  Padding(
                    padding: i != communities.length - 1
                        ? const EdgeInsets.only(top: 16.0)
                        : EdgeInsets.zero,
                    child: AllGroupsItem(
                      community: communities[i],
                    ),
                  )
              ],
            )
          ],
        ),
      )),
    );
  }
}

class AllGroupsItem extends StatelessWidget {
  const AllGroupsItem({
    super.key,
    required this.community,
  });

  final CommunityModel community;

  @override
  Widget build(BuildContext context) {
    final lastFourMembers = community.members!.length >= 4
        ? community.members!.sublist(0, 4)
        : community.members;

    return Container(
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
              if (lastFourMembers!.isEmpty)
                SizedBox.shrink()
              else
                Stack(
                  children: [
                    if (lastFourMembers.length >= 4)
                      Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
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
                    for (int i = lastFourMembers.length; i >= 0; i--)
                      Positioned(
                          left: i * 30,
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 2, color: AppColors.whiteColor),
                                image: lastFourMembers[i].profileImage == null
                                    ? DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            "assets/images/default_avatar.png"))
                                    : DecorationImage(
                                        fit: BoxFit.cover,
                                        image: NetworkImage(
                                            lastFourMembers[i].profileImage!))),
                          ))
                  ],
                ),
              BlackContainerButton(
                  text: "+ Join", action: () => Navigator.pop(context))
            ],
          )
        ],
      ),
    );
  }
}
