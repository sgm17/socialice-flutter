import 'package:flutter/material.dart';
import 'package:socialice/constants/app_colors.dart';
import 'package:socialice/domains/event_repository/src/models/category_model.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchEventName extends StatelessWidget {
  const SearchEventName({
    super.key,
    this.focusNode,
  });

  final FocusNode? focusNode;

  @override
  Widget build(BuildContext context) {
    return TextField(
        focusNode: focusNode,
        maxLength: 40,
        textAlignVertical: TextAlignVertical.center,
        style: TextStyle(
          color: AppColors.blackColor,
          fontSize: 16.0,
          fontWeight: FontWeight.w400,
        ),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(
            vertical: 17,
          ),
          counter: SizedBox.shrink(),
          prefixIcon: SvgPicture.asset(
            'assets/vectors/vector_9_x2.svg',
          ),
          prefixIconConstraints: BoxConstraints(
            maxWidth: 12 + 4 + 16.82,
            maxHeight: 16.82,
          ),
          border: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xFFC1C1CB), width: 1)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xFFC1C1CB), width: 1)),
          isCollapsed: true,
          hintText: 'Music event, standup',
          hintStyle: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w400,
            color: AppColors.greyLightColor,
          ),
        ));
  }
}

class EventCategoryItem extends StatelessWidget {
  const EventCategoryItem({super.key, required this.eventCategory});

  final CategoryModel eventCategory;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 132,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                eventCategory.categoryImage,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 11,
        ),
        Text(
          eventCategory.categoryName,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 18,
            color: Color(0xFF1B1A1D),
          ),
        ),
      ],
    );
  }
}
