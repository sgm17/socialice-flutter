import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:socialice/constants/app_colors.dart';
import 'package:socialice/domains/event_repository/src/models/category_model.dart';
import 'package:socialice/screens/select_city_screen/select_city_screen.dart';
import 'package:socialice/widgets/arrow_back.dart';
import 'package:socialice/widgets/black_container_button.dart';

class CreateCommunityScreen extends StatefulWidget {
  const CreateCommunityScreen({super.key});

  @override
  State<CreateCommunityScreen> createState() => _CreateCommunityScreenState();
}

class _CreateCommunityScreenState extends State<CreateCommunityScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  CategoryModel? _selectedOption;
  XFile? image;
  Suggestion? _suggestion;

  Future cityFocusCallback() async {
    final res = await Navigator.pushNamedAndRemoveUntil(context,
        '/SelectCityScreen', ModalRoute.withName('/CreateCommunityScreen'),
        arguments: {
          "latitude": 47.37688503857095,
          "longitude": 8.541698613196816
        });

    final suggestion = res as Suggestion?;

    setState(() {
      _suggestion = suggestion;
    });

    print(suggestion);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
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
                Form(
                  key: _formKey,
                  child: Column(
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
                                  _suggestion?.displayName ?? "",
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
                          Container(
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
                                    isExpanded: true,
                                    icon: Icon(Icons.arrow_drop_down),
                                    onChanged: (CategoryModel? newValue) {
                                      setState(() {
                                        _selectedOption = newValue;
                                      });
                                    },
                                    items: CategoryModel.allCategories
                                        .map<DropdownMenuItem<CategoryModel>>(
                                            (CategoryModel value) {
                                      return DropdownMenuItem<CategoryModel>(
                                        value: value,
                                        child: Text(value.categoryName),
                                      );
                                    }).toList(),
                                  ),
                                ),
                              ))
                        ],
                      ),
                      SizedBox(
                        height: 48,
                      ),
                      Center(
                        child: Container(
                          padding: EdgeInsets.all(16),
                          alignment: Alignment.center,
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                            color: AppColors.whiteColor,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: AppColors.blackColor),
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
                      SizedBox(
                        height: 48,
                      ),
                      BlackContainerButton(
                          text: "Create", action: () => Navigator.pop(context)),
                      SizedBox(
                        height: 48,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
