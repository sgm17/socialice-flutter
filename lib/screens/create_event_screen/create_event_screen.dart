import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:socialice/constants/app_colors.dart';
import 'package:socialice/dialogs/message_dialog/message_dialog.dart';
import 'package:socialice/domains/community_repository/src/models/community_model.dart';
import 'package:socialice/domains/event_repository/src/models/event_type.dart';
import 'package:socialice/providers/app_user_provider/app_user_provider.dart';
import 'package:socialice/providers/event_provider/events_provider.dart';
import 'package:socialice/providers/firebase_storage_provider/firebase_storage_provider.dart';
import 'package:socialice/screens/select_city_screen/select_city_screen.dart';
import 'package:socialice/utils/date_parser.dart';
import 'package:socialice/widgets/arrow_back.dart';
import 'package:socialice/widgets/black_container_button.dart';
import 'package:socialice/widgets/skelton.dart';

class CreateEventScreen extends ConsumerStatefulWidget {
  const CreateEventScreen({super.key});

  @override
  ConsumerState<CreateEventScreen> createState() => _CreateEventScreenState();
}

class _CreateEventScreenState extends ConsumerState<CreateEventScreen> {
  Suggestion? _suggestion;
  XFile? _image;

  EventType? _eventType;
  CommunityModel? _communityModel;

  DateTime? dateStart;
  TimeOfDay? timeStart;
  DateTime? dateEnd;
  TimeOfDay? timeEnd;

  late TextEditingController _nameController;
  late TextEditingController _descriptionController;
  late TextEditingController _priceController;
  late TextEditingController _oldPriceController;

  @override
  void initState() {
    _nameController = TextEditingController();
    _descriptionController = TextEditingController();
    _priceController = TextEditingController();
    _oldPriceController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _descriptionController.dispose();
    _priceController.dispose();
    _oldPriceController.dispose();
    super.dispose();
  }

  Future cityFocusCallback() async {
    final suggestion = await Navigator.pushNamedAndRemoveUntil(
        context, '/SelectCityScreen', ModalRoute.withName('/CreateEventScreen'),
        arguments: {
          "latitude": 47.37688503857095,
          "longitude": 8.541698613196816
        });

    if (suggestion is Suggestion? && suggestion != null) {
      setState(() {
        _suggestion = suggestion;
      });
    }
  }

  Future submitCreateEvent() async {
    if (_nameController.text.isNotEmpty &&
        _descriptionController.text.isNotEmpty &&
        _priceController.text.isNotEmpty &&
        _image != null &&
        _suggestion != null &&
        _eventType != null &&
        _communityModel != null &&
        dateStart != null &&
        timeStart != null &&
        dateEnd != null &&
        timeEnd != null) {
      final startDate = DateTime(dateStart!.year, dateStart!.month,
          dateStart!.day, timeStart!.hour, timeStart!.minute);
      final endDate = DateTime(dateEnd!.year, dateEnd!.month, dateEnd!.day,
          dateEnd!.hour, dateEnd!.minute);

      final image = await ref
          .read(firebaseStorageProvider.notifier)
          .uploadFileToFirebaseStorage(File(_image!.path));

      await ref.read(eventsProvider.notifier).createEvent(
          name: _nameController.text,
          description: _descriptionController.text,
          image: image,
          placeName: _suggestion!.name,
          completeAddress: _suggestion!.displayName,
          communityId: _communityModel!.id,
          startDate: startDate,
          endDate: endDate,
          latitude: _suggestion!.latitude,
          longitude: _suggestion!.longitude,
          price: double.parse(_priceController.text),
          priceWithoutDiscount: double.parse(_oldPriceController.text),
          eventType: _eventType!);
    } else {
      showDialog(
        context: context,
        builder: (context) => MessageDialog(
            message: "One or more of the required fields are empty",
            buttonText: "Retry"),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final nowDateTime = DateTime.now();

    final appUserState = ref.watch(appUserProvider);

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 32,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: ArrowBack())),
                    Expanded(
                      flex: 2,
                      child: Text(
                        "Create Event",
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
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                                    color: AppColors.greyLightColor, width: 1)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                    color: AppColors.greyLightColor, width: 1)),
                            isCollapsed: true,
                            hintText: "Event Name",
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
                                    color: AppColors.greyLightColor, width: 1)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                    color: AppColors.greyLightColor, width: 1)),
                            isCollapsed: true,
                            hintText: "Event Description",
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
                  Text(
                    "Date and Time",
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
                      padding: EdgeInsets.symmetric(vertical: 13),
                      alignment: Alignment.centerLeft,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: AppColors.whiteColor,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: AppColors.greyDarkColor, width: 1),
                      ),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(16, 0, 64, 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Starts",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16,
                                    color: AppColors.blackColor,
                                  ),
                                ),
                                DateItem(
                                  handleContainerTap: () {
                                    showDatePicker(
                                            context: context,
                                            firstDate: nowDateTime,
                                            lastDate: DateTime(
                                                nowDateTime.year,
                                                nowDateTime.month + 1,
                                                nowDateTime.day))
                                        .then((value) => setState(() {
                                              dateStart = value;
                                            }));
                                  },
                                  nowDateTime: nowDateTime,
                                  dateStart: dateStart,
                                ),
                                TimeItem(
                                  handleContainerTap: () {
                                    showTimePicker(
                                      context: context,
                                      initialTime:
                                          TimeOfDay(hour: 0, minute: 0),
                                    ).then((value) => setState(() {
                                          timeStart = value;
                                        }));
                                  },
                                  timeOfDay: timeStart,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Ends",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16,
                                    color: AppColors.blackColor,
                                  ),
                                ),
                                DateItem(
                                  handleContainerTap: () {
                                    showDatePicker(
                                            context: context,
                                            firstDate: nowDateTime,
                                            lastDate: DateTime(
                                                nowDateTime.year,
                                                nowDateTime.month + 1,
                                                nowDateTime.day))
                                        .then((value) => setState(() {
                                              dateEnd = value;
                                            }));
                                  },
                                  nowDateTime: nowDateTime,
                                  dateStart: dateEnd,
                                ),
                                TimeItem(
                                  handleContainerTap: () {
                                    showTimePicker(
                                      context: context,
                                      initialTime:
                                          TimeOfDay(hour: 0, minute: 0),
                                    ).then((value) => setState(() {
                                          timeEnd = value;
                                        }));
                                  },
                                  timeOfDay: timeEnd,
                                ),
                              ],
                            )
                          ],
                        ),
                      )),
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
                              _suggestion?.displayName ??
                                  "Strasse, 8001 Zurich",
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
                                child: DropdownButton<EventType>(
                                  value: _eventType,
                                  hint: Text("Select an option"),
                                  isExpanded: true,
                                  icon: Icon(Icons.arrow_drop_down),
                                  onChanged: (EventType? newValue) {
                                    setState(() {
                                      _eventType = newValue;
                                    });
                                  },
                                  items: EventType.values
                                      .toList()
                                      .map<DropdownMenuItem<EventType>>(
                                          (EventType value) {
                                    return DropdownMenuItem<EventType>(
                                      value: value,
                                      child: Text(value.name),
                                    );
                                  }).toList(),
                                ),
                              ),
                            ))
                      ])
                ]),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 88,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Price",
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
                                controller: _priceController,
                                maxLength: 40,
                                keyboardType: TextInputType.number,
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
                                  hintText: "CHF 30",
                                  hintStyle: TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.greyLightColor,
                                  ),
                                ))
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Price Without Discount",
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
                                controller: _oldPriceController,
                                keyboardType: TextInputType.number,
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
                                  hintText: "CHF 50",
                                  hintStyle: TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.greyLightColor,
                                  ),
                                ))
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Community",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                        color: AppColors.blackColor,
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    appUserState.when(
                      data: (appUser) => Container(
                        alignment: Alignment.centerLeft,
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
                            appUser.createdCommunity?.name ??
                                "No community found",
                            style: TextStyle(
                              color: AppColors.blackColor,
                              fontSize: 14.0,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      loading: () => Skelton(
                          height: 53, borderRadius: 6, isProfileImage: false),
                      error: (error, stackTrace) => SizedBox.shrink(),
                    ),
                  ],
                ),
                SizedBox(
                  height: 48,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(16),
                        alignment: Alignment.center,
                        height: 146,
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
                              "Upload Horizontal Image",
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
                      width: 10,
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(16),
                        alignment: Alignment.center,
                        height: 167,
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
                              "Upload Vertical Image",
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
                  ],
                ),
                SizedBox(
                  height: 48,
                ),
                BlackContainerButton(
                    text: "Create", action: () => Navigator.pop(context)),
                SizedBox(
                  height: 48,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DateItem extends StatelessWidget {
  const DateItem({
    super.key,
    required this.handleContainerTap,
    this.dateStart,
    required this.nowDateTime,
  });

  final Function handleContainerTap;

  final DateTime? dateStart;
  final DateTime nowDateTime;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => handleContainerTap(),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 5),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(3),
            color: AppColors.greyLightColor),
        child: Text(formatMonthWordDayYear(dateStart ?? nowDateTime),
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14,
              color: AppColors.blueColor,
            )),
      ),
    );
  }
}

class TimeItem extends StatelessWidget {
  const TimeItem({
    super.key,
    required this.handleContainerTap,
    this.timeOfDay,
  });

  final Function handleContainerTap;

  final TimeOfDay? timeOfDay;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => handleContainerTap(),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 5),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(3),
            color: AppColors.greyLightColor),
        child: Text(formatTimeOfDay(timeOfDay ?? TimeOfDay.now()),
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14,
              color: AppColors.blueColor,
            )),
      ),
    );
  }
}
