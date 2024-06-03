import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:socialice/constants/app_colors.dart';
import 'package:socialice/dialogs/message_dialog/message_dialog.dart';
import 'package:socialice/domains/event_repository/src/models/category_model.dart';
import 'package:socialice/providers/categories_provider/categories_provider.dart';
import 'package:socialice/providers/firebase_storage_provider/firebase_storage_provider.dart';
import 'package:socialice/screens/select_city_screen/select_city_screen.dart';
import 'package:socialice/widgets/arrow_back.dart';
import 'package:socialice/widgets/black_container_button.dart';
import 'package:socialice/widgets/skelton.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:io';

class CreateCommunityScreen extends ConsumerStatefulWidget {
  const CreateCommunityScreen({super.key});

  @override
  ConsumerState<CreateCommunityScreen> createState() =>
      _CreateCommunityScreenState();
}

class _CreateCommunityScreenState extends ConsumerState<CreateCommunityScreen> {
  late TextEditingController _nameController;
  late TextEditingController _descriptionController;
  CategoryModel? _selectedOption;
  XFile? _image;
  Suggestion? _suggestion;

  Future<void> _submitCreateCommunity() async {
    if (_nameController.text.isNotEmpty &&
        _descriptionController.text.isNotEmpty &&
        _image != null &&
        _selectedOption != null &&
        _suggestion != null) {
      final imageUrl = await ref
          .read(firebaseStorageProvider.notifier)
          .uploadFileToFirebaseStorage(File(_image!.path));
      final communityJson = {
        "name": _nameController.text,
        "description": _descriptionController.text,
        "image": imageUrl,
        "categoryId": _selectedOption?.id,
        "city": _suggestion?.name,
        "latitude": _suggestion?.latitude,
        "longitude": _suggestion?.longitude
      };
      Navigator.of(context).pop(jsonEncode(communityJson));
    } else {
      showDialog(
          context: context,
          builder: (context) => MessageDialog(
              message: "One or more of the required fields are empty",
              buttonText: "Retry"));
    }
  }

  @override
  void initState() {
    _nameController = TextEditingController();
    _descriptionController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final categoriesState = ref.watch(categoriesFutureProvider);

    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                SizedBox(
                  height: 32,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(child: ArrowBack()),
                    Expanded(
                      flex: 2,
                      child: Text(
                        "Create Community",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Expanded(child: SizedBox.shrink()),
                  ],
                ),
                SizedBox(
                  height: 32,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Name",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                            color: AppColors.blackColor,
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        TextFormField(
                            controller: _nameController,
                            maxLength: 40,
                            textAlignVertical: TextAlignVertical.center,
                            style: TextStyle(
                              color: AppColors.blackColor,
                              fontSize: 14.0,
                              fontWeight: FontWeight.w400,
                            ),
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(16),
                              counter: SizedBox.shrink(),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                      color: AppColors.greyLightColor,
                                      width: 1)),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                      color: AppColors.greyLightColor,
                                      width: 1)),
                              isCollapsed: true,
                              hintText: "Community Name",
                              hintStyle: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.w400,
                                color: AppColors.greyLightColor,
                              ),
                            ))
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Description",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                            color: AppColors.blackColor,
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        TextFormField(
                            controller: _descriptionController,
                            maxLength: 180,
                            maxLines: 5,
                            textAlignVertical: TextAlignVertical.center,
                            style: TextStyle(
                              color: AppColors.blackColor,
                              fontSize: 14.0,
                              fontWeight: FontWeight.w400,
                            ),
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(16),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                      color: AppColors.greyLightColor,
                                      width: 1)),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                      color: AppColors.greyLightColor,
                                      width: 1)),
                              isCollapsed: true,
                              hintText: "Community Description",
                              hintStyle: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.w400,
                                color: AppColors.greyLightColor,
                              ),
                            ))
                      ],
                    ),
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
                          onTap: () async {
                            final suggestion =
                                await Navigator.pushNamedAndRemoveUntil(
                                    context,
                                    '/SelectCityScreen',
                                    ModalRoute.withName(
                                        '/CreateCommunityScreen'),
                                    arguments: {
                                  "latitude": 47.37688503857095,
                                  "longitude": 8.541698613196816
                                });
                            if (suggestion is Suggestion? && suggestion != null)
                              setState(() {
                                _suggestion = suggestion;
                              });
                          },
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
                                _suggestion?.displayName ?? "Select a location",
                                style: TextStyle(
                                  color: _suggestion == null
                                      ? AppColors.greyLightColor
                                      : AppColors.blackColor,
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
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Category",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                            color: AppColors.blackColor,
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        categoriesState.when(
                          data: (categories) => Container(
                              height: 53,
                              decoration: BoxDecoration(
                                color: AppColors.whiteColor,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                    color: AppColors.greyDarkColor, width: 1),
                              ),
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 12),
                                child: DropdownButtonHideUnderline(
                                  child: DropdownButton<CategoryModel>(
                                    value: _selectedOption,
                                    hint: Text("Select an option"),
                                    style: TextStyle(
                                        color: AppColors.blackColor,
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w400),
                                    isExpanded: true,
                                    icon: Icon(Icons.arrow_drop_down),
                                    onChanged: (CategoryModel? newValue) {
                                      setState(() {
                                        _selectedOption = newValue;
                                      });
                                    },
                                    items: categories
                                        .map<DropdownMenuItem<CategoryModel>>(
                                            (CategoryModel value) {
                                      return DropdownMenuItem<CategoryModel>(
                                        value: value,
                                        child: Text(value.name),
                                      );
                                    }).toList(),
                                  ),
                                ),
                              )),
                          loading: () => Skelton(
                              height: 53,
                              borderRadius: 6,
                              isProfileImage: false),
                          error: (error, stackTrace) => SizedBox.shrink(),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 48,
                    ),
                    GestureDetector(
                      onTap: () async {
                        final ImagePicker picker = ImagePicker();
                        final XFile? image =
                            await picker.pickImage(source: ImageSource.gallery);

                        if (image != null)
                          setState(() {
                            _image = image;
                          });
                      },
                      child: Center(
                        child: _image != null
                            ? SizedBox(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.file(
                                    File(_image!.path),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              )
                            : Container(
                                padding: EdgeInsets.all(16),
                                alignment: Alignment.center,
                                height: 225,
                                decoration: BoxDecoration(
                                  color: AppColors.whiteColor,
                                  borderRadius: BorderRadius.circular(10),
                                  border:
                                      Border.all(color: AppColors.blackColor),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.cloud_upload_outlined,
                                      size: 30,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "Upload Community Image",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        color: AppColors.blackColor,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                      ),
                    ),
                    SizedBox(
                      height: 48,
                    ),
                    BlackContainerButton(
                        text: "Create", action: _submitCreateCommunity),
                    SizedBox(
                      height: 48,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
