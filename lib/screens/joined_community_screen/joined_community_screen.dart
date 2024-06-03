import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:socialice/constants/app_colors.dart';
import 'package:socialice/providers/community_provider/communities_provider.dart';
import 'package:socialice/widgets/arrow_back.dart';

class JoinedCommunityScreen extends ConsumerWidget {
  const JoinedCommunityScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    void _handleSearchGroups() async {
      Navigator.pushNamed(context, "/AllGroupsScreen");
    }

    final Map<String, dynamic> args =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    final String communityId = args['communityId'];

    final communities = ref.watch(communitiesProvider).asData!.value;
    final community = communities.where((e) => e.id == communityId).firstOrNull;

    if (community == null) {
      return SizedBox.shrink();
    }

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
                height: 32,
              ),
              Center(
                child: Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(community.image))),
                ),
              ),
              SizedBox(
                height: 32,
              ),
              Text(
                "We welcome you to ${community.name}",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 28,
                  color: AppColors.blackColor,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                "Good! You've joined a group and are well on your way to making new connections.",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                  color: AppColors.blackColor,
                ),
              ),
              SizedBox(
                height: 32,
              ),
              Text(
                "Search for other groups",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 20,
                  color: AppColors.blackColor,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(16),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: AppColors.blackColor.withOpacity(.6),
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                          height: 70,
                          child: Image.asset("assets/images/joined_group.png",
                              fit: BoxFit.cover)),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 32.0),
                        child: Text(
                          "Keep going! Find more groups related to your interests.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: AppColors.whiteColor,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: _handleSearchGroups,
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: AppColors.whiteColor),
                              borderRadius: BorderRadius.circular(10)),
                          padding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 16),
                          child: Text(
                            "Search for other groups",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 13,
                              color: AppColors.whiteColor,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
