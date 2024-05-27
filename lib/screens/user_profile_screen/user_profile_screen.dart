import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:socialice/constants/app_colors.dart';
import 'package:socialice/providers/user_profile_provider/user_profile_provider.dart';
import 'package:socialice/widgets/arrow_back.dart';
import 'package:socialice/widgets/profile_member_group.dart';
import 'package:socialice/widgets/profile_organizer_group.dart';
import 'package:socialice/widgets/skelton.dart';

class UserProfileScreen extends ConsumerWidget {
  const UserProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Map<String, dynamic> args =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    final String userId = args['userId'];

    final userProfileState = ref.watch(userProfileProvider(userId));

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ArrowBack(),
                  Text(
                    "Profile",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                    ),
                  ),
                  Icon(
                    Icons.settings_outlined,
                    weight: 300.0,
                    size: 30.0,
                  ),
                ],
              ),
              SizedBox(
                height: 32.0,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  userProfileState.when(
                    data: (appUser) => Container(
                      height: 110,
                      width: 110,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: appUser.profileImage == null
                            ? DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    "assets/images/default_avatar.png"))
                            : DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                  appUser.profileImage!,
                                ),
                              ),
                      ),
                    ),
                    loading: () => Skelton(
                        height: 110,
                        width: 110,
                        borderRadius: 20,
                        isProfileImage: false),
                    error: (error, stackTrace) => SizedBox.shrink(),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 235,
                        child: userProfileState.when(
                          data: (appUser) => Text(
                            "${appUser.name} ${appUser.surname}",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 28,
                              color: AppColors.blackColor,
                            ),
                          ),
                          loading: () => Skelton(
                              width: 235,
                              height: 35,
                              borderRadius: 6,
                              isProfileImage: false),
                          error: (error, stackTrace) => SizedBox.shrink(),
                        ),
                      ),
                      SizedBox(
                        height: 1,
                      ),
                      userProfileState.when(
                        data: (appUser) => SizedBox(
                          width: 235,
                          child: RichText(
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "${appUser.username} · ",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: AppColors.blackColor,
                                  ),
                                ),
                                TextSpan(
                                  text: appUser.location,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: AppColors.greyDarkColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        loading: () => Skelton(
                            width: 235,
                            height: 22,
                            borderRadius: 6,
                            isProfileImage: false),
                        error: (error, stackTrace) => SizedBox.shrink(),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                color: AppColors.blackColor,
                                borderRadius: BorderRadius.circular(10)),
                            child: Icon(
                              Icons.chat_bubble_outline_outlined,
                              size: 18,
                              color: AppColors.whiteColor,
                            ),
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                color: AppColors.greyLightColor,
                                borderRadius: BorderRadius.circular(10)),
                            child: Icon(
                              Icons.more_horiz_rounded,
                              size: 18,
                            ),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              userProfileState.when(
                data: (appUser) => Text(
                  appUser.description ?? "Hey, I'm using Socialice",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                    color: Color(0xFF1B1A1D),
                  ),
                ),
                loading: () =>
                    Skelton(height: 26, borderRadius: 8, isProfileImage: false),
                error: (error, stackTrace) => SizedBox.shrink(),
              ),
              SizedBox(
                height: 30,
              ),
              userProfileState.when(
                data: (appUser) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Organizer (${appUser.createdCommunity != null ? 1 : 0})',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 25,
                        color: Color(0xFF1B1A1D),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    if (appUser.createdCommunity != null)
                      ProfileOrganizerGroup(
                        community: appUser.createdCommunity!,
                      )
                    else
                      NoOrganizerGroup(),
                  ],
                ),
                loading: () =>
                    Skelton(height: 96, borderRadius: 8, isProfileImage: false),
                error: (error, stackTrace) => SizedBox.shrink(),
              ),
              SizedBox(
                height: 32,
              ),
              userProfileState.when(
                data: (appUser) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Member (${appUser.communities!.length})",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 25,
                        color: Color(0xFF1B1A1D),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    for (var community in appUser.communities!)
                      Padding(
                        padding: appUser.communities![0].id == community.id
                            ? EdgeInsets.only(bottom: 16)
                            : EdgeInsets.symmetric(vertical: 16.0),
                        child: ProfileMemberGroup(
                          community: community,
                        ),
                      ),
                    NoMemberGroup(),
                  ],
                ),
                loading: () => Skelton(
                    height: 100, borderRadius: 8, isProfileImage: false),
                error: (error, stackTrace) => SizedBox.shrink(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NoOrganizerGroup extends StatelessWidget {
  const NoOrganizerGroup({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          alignment: Alignment.center,
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.blackColor),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(size: 30, Icons.no_accounts_outlined),
        ),
        SizedBox(
          width: 16,
        ),
        Flexible(
          child: Text(
            "The user doesn't organize a group",
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 18,
              color: Color(0xFF1B1A1D),
            ),
          ),
        ),
      ],
    );
  }
}

class NoMemberGroup extends StatelessWidget {
  const NoMemberGroup({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          alignment: Alignment.center,
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.blackColor),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(size: 30, Icons.no_accounts_outlined),
        ),
        SizedBox(
          width: 16,
        ),
        Flexible(
          child: Text(
            "The user isn't a member of a group",
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 18,
              color: Color(0xFF1B1A1D),
            ),
          ),
        ),
      ],
    );
  }
}
