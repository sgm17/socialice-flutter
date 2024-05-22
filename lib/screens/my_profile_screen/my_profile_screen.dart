import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:socialice/constants/app_colors.dart';
import 'package:socialice/models.dart';
import 'package:socialice/providers/app_user_provider/app_user_provider.dart';
import 'package:socialice/widgets/arrow_back.dart';
import 'package:socialice/widgets/profile_member_group.dart';
import 'package:socialice/widgets/profile_organizer_group.dart';
import 'package:socialice/screens/my_profile_screen/widgets/profile_discover_group.dart';
import 'package:socialice/screens/my_profile_screen/widgets/profile_initialize_group.dart';
import 'package:socialice/widgets/skelton.dart';

class MyProfileScreen extends ConsumerWidget {
  MyProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appUserState = ref.watch(appUserProvider);

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
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
                    appUserState.when(
                      data: (appUser) => Container(
                        height: 110,
                        width: 110,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              appUser.profileImage,
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
                          child: appUserState.when(
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
                        appUserState.when(
                          data: (appUser) => SizedBox(
                            width: 235,
                            child: RichText(
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "@${appUser.username} · ",
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
                        Container(
                          alignment: Alignment.center,
                          height: 40,
                          width: 140,
                          decoration: BoxDecoration(
                              color: AppColors.blackColor,
                              borderRadius: BorderRadius.circular(4)),
                          child: Text(
                            "Edit Profile",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: Color(0xFFFFFFFF),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                appUserState.when(
                  data: (appUser) => Text(
                    lauraAppUserModel.description,
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      color: Color(0xFF1B1A1D),
                    ),
                  ),
                  loading: () => Skelton(
                      height: 26, borderRadius: 8, isProfileImage: false),
                  error: (error, stackTrace) => SizedBox.shrink(),
                ),
                SizedBox(
                  height: 30,
                ),
                appUserState.when(
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
                        ProfileInitializeGroup(),
                    ],
                  ),
                  loading: () => Skelton(
                      height: 96, borderRadius: 8, isProfileImage: false),
                  error: (error, stackTrace) => SizedBox.shrink(),
                ),
                SizedBox(
                  height: 32,
                ),
                appUserState.when(
                  data: (appUser) => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Member (${appUser.joinedCommunities.length})",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 25,
                          color: Color(0xFF1B1A1D),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      for (var community in appUser.joinedCommunities)
                        Padding(
                          padding:
                              appUser.joinedCommunities[0].id == community.id
                                  ? EdgeInsets.only(bottom: 16)
                                  : EdgeInsets.symmetric(vertical: 16.0),
                          child: ProfileMemberGroup(
                            community: community,
                          ),
                        ),
                      GestureDetector(
                          onTap: () =>
                              Navigator.pushNamed(context, "/AllGroupsScreen"),
                          child: ProfileDiscoverGroup()),
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
      ),
    );
  }
}
