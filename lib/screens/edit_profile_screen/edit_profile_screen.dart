import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:socialice/constants/app_colors.dart';
import 'package:socialice/domains/app_user_repository/src/models/app_user_model.dart';
import 'package:socialice/providers/app_user_provider/app_user_provider.dart';
import 'package:socialice/screens/edit_profile_screen/widgets/edit_profile_description.dart';
import 'package:socialice/screens/edit_profile_screen/widgets/edit_profile_input.dart';
import 'package:socialice/screens/select_city_screen/select_city_screen.dart';
import 'package:socialice/widgets/arrow_back.dart';
import 'package:socialice/widgets/black_container_button.dart';
import 'package:flutter/material.dart';
import 'dart:io';

class EditProfileScreen extends ConsumerStatefulWidget {
  const EditProfileScreen({super.key});

  @override
  ConsumerState<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends ConsumerState<EditProfileScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController? _nameController;
  TextEditingController? _surnameController;
  TextEditingController? _usernameController;
  TextEditingController? _descriptionController;

  File? profileImage;
  Suggestion? suggestion;

  bool _controllersInitialized = false;
  bool _canScreenPop = false;

  void _initializeControllers(
      String name, String surname, String username, String? description) {
    if (!_controllersInitialized) {
      _nameController = TextEditingController(text: name);
      _surnameController = TextEditingController(text: surname);
      _usernameController = TextEditingController(text: username);
      _descriptionController = TextEditingController(text: description);
      _controllersInitialized = true;
    }
  }

  @override
  void dispose() {
    _nameController?.dispose();
    _surnameController?.dispose();
    _usernameController?.dispose();
    _descriptionController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final appUser = ref.watch(appUserProvider).asData!.value;

    _initializeControllers(
        appUser.name, appUser.surname, appUser.username, appUser.description);

    return PopScope(
      canPop: _canScreenPop,
      onPopInvoked: (didPop) async {
        final canScreenPop = await _submitForm(appUser);

        setState(() {
          _canScreenPop = canScreenPop;
        });
      },
      child: Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () => _handleProfileImage(),
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Opacity(
                                      opacity: 0.5,
                                      child: Container(
                                        height: 110,
                                        width: 110,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          image: appUser.profileImage == null
                                              ? profileImage == null
                                                  ? DecorationImage(
                                                      fit: BoxFit.cover,
                                                      image: AssetImage(
                                                          "assets/images/default_avatar.png"))
                                                  : DecorationImage(
                                                      fit: BoxFit.cover,
                                                      image: FileImage(File(
                                                          profileImage!.path)))
                                              : DecorationImage(
                                                  fit: BoxFit.cover,
                                                  image: NetworkImage(
                                                    appUser.profileImage!,
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
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
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
                                    appUser.username,
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
                            controller: _nameController,
                          ),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Expanded(
                          child: EditProfileInput(
                              title: "Surname", controller: _surnameController),
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
                              controller: _usernameController),
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
                                onTap: () => _cityFocusCallback(appUser),
                                child: Container(
                                  alignment: Alignment.centerLeft,
                                  width: double.infinity,
                                  height: 53,
                                  decoration: BoxDecoration(
                                    color: AppColors.whiteColor,
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                        color: AppColors.greyDarkColor,
                                        width: 1),
                                  ),
                                  child: Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 12),
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
                          EditProfileDescription(
                              initialValue: appUser.description ??
                                  "Hey, I'm using Socialice"),
                          SizedBox(
                            height: 32,
                          ),
                          BlackContainerButton(
                              text: "Save",
                              action: () => Navigator.pop(context)),
                          SizedBox(
                            height: 48,
                          )
                        ],
                      ),
                    )
                  ])),
        )),
      ),
    );
  }

  Future<bool> _submitForm(AppUserModel appUser) async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();

      final name = _nameController?.text;
      final surname = _surnameController?.text;
      final username = _usernameController?.text;
      final description = _descriptionController?.text;

      ref.read(appUserProvider.notifier).updateMyProfile(
          name: name,
          surname: surname,
          username: username,
          description: description,
          suggestion: suggestion,
          profileImage: profileImage);

      return true;
    }
    return false;
  }

  Future<void> _handleProfileImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? _image = await picker.pickImage(source: ImageSource.gallery);

    if (_image == null) return;

    setState(() {
      profileImage = File(_image.path);
    });
  }

  Future _cityFocusCallback(AppUserModel appUser) async {
    final res = await Navigator.pushNamedAndRemoveUntil(
        context, '/SelectCityScreen', ModalRoute.withName('/EditProfileScreen'),
        arguments: {
          "latitude": appUser.latitude,
          "longitude": appUser.longitude
        });

    final _suggestion = res as Suggestion?;

    if (_suggestion == null) return;

    setState(() {
      suggestion = _suggestion;
    });
  }
}
