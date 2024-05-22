import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:socialice/constants/app_colors.dart';
import 'package:socialice/providers/app_user_provider/app_user_provider.dart';
import 'package:socialice/screens/edit_profile_screen/widgets/edit_profile_description.dart';
import 'package:socialice/screens/edit_profile_screen/widgets/edit_profile_input.dart';
import 'package:socialice/screens/select_city_screen/select_city_screen.dart';
import 'package:socialice/widgets/arrow_back.dart';
import 'package:socialice/widgets/black_container_button.dart';
import 'package:flutter/material.dart';

class EditProfileScreen extends ConsumerStatefulWidget {
  const EditProfileScreen({super.key});

  @override
  ConsumerState<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends ConsumerState<EditProfileScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final appUser = ref.watch(appUserProvider).asData?.value;

    if (appUser == null) {
      return SizedBox.shrink();
    }

    Future cityFocusCallback() async {
      final res = await Navigator.pushNamedAndRemoveUntil(context,
          '/SelectCityScreen', ModalRoute.withName('/EditProfileScreen'),
          arguments: {
            "latitude": appUser.latitude,
            "longitude": appUser.longitude
          });

      final suggestion = res as Suggestion?;

      if (suggestion != null) {
        ref.read(appUserProvider.notifier).setLocation(suggestion);
        print(suggestion);
      }
    }

    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(child: ArrowBack()),
                  Expanded(
                    child: Text(
                      "Profile",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Expanded(child: SizedBox.shrink())
                ],
              ),
              SizedBox(
                height: 32.0,
              ),
              Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Opacity(
                          opacity: 0.5,
                          child: Container(
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
                        ),
                        Icon(
                          Icons.camera_alt_outlined,
                          size: 50,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text("Change Photo",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                        )),
                  ],
                ),
                SizedBox(
                  width: 16,
                ),
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  SizedBox(
                    width: 235,
                    child: Text(
                      "${appUser.name} ${appUser.surname}",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 28,
                        color: AppColors.blackColor,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 1,
                  ),
                  SizedBox(
                    width: 235,
                    child: Text(
                      "@${appUser.username}",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: AppColors.blackColor,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 1,
                  ),
                  SizedBox(
                    width: 235,
                    child: Text(
                      appUser.location,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: AppColors.greyDarkColor,
                      ),
                    ),
                  ),
                ])
              ]),
              SizedBox(
                height: 32,
              ),
              Row(
                children: [
                  Expanded(
                    child: EditProfileInput(
                      title: "Name",
                      initialValue: appUser.name,
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: EditProfileInput(
                        title: "Surname", initialValue: appUser.surname),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    EditProfileInput(
                        title: "Username",
                        initialValue: "@${appUser.username}"),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Location",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                            color: AppColors.blackColor,
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        GestureDetector(
                          onTap: () => cityFocusCallback(),
                          child: Container(
                            alignment: Alignment.centerLeft,
                            width: double.infinity,
                            height: 53,
                            decoration: BoxDecoration(
                              color: AppColors.whiteColor,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                  color: AppColors.greyDarkColor, width: 1),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 12),
                              child: Text(
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                appUser.location,
                                style: TextStyle(
                                  color: AppColors.blackColor,
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    EditProfileDescription(initialValue: appUser.description),
                    SizedBox(
                      height: 32,
                    ),
                    BlackContainerButton(
                        text: "Save", action: () => Navigator.pop(context)),
                    SizedBox(
                      height: 48,
                    )
                  ],
                ),
              )
            ])),
      )),
    );
  }
}
