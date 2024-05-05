import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:socialice/app_colors.dart';
import 'package:socialice/awidgets/search_event_name.dart';
import 'package:socialice/utils.dart';

class EventCategory {
  final String categoryName;
  final String categoryImage;

  EventCategory({required this.categoryName, required this.categoryImage});
}

final List<EventCategory> allCategories = [
  EventCategory(
      categoryName: "New Groups",
      categoryImage: "assets/images/new_groups_image.jpeg"),
  EventCategory(
      categoryName: "Art & Culture",
      categoryImage: "assets/images/art_culture_image.jpeg"),
  EventCategory(
      categoryName: "Career & business",
      categoryImage: "assets/images/career_business_image.jpeg"),
  EventCategory(
      categoryName: "Community & Environment",
      categoryImage: "assets/images/community_image.jpeg"),
  EventCategory(
      categoryName: "Dancing",
      categoryImage: "assets/images/dancing_category_image.jpeg"),
  EventCategory(
      categoryName: "Games",
      categoryImage: "assets/images/games_category_image.jpeg"),
  EventCategory(
      categoryName: "Health & Wellbeing",
      categoryImage: "assets/images/health_wellbeing_image.jpeg"),
  EventCategory(
      categoryName: "Hobbies & Passions",
      categoryImage: "assets/images/hobbies_image.jpeg"),
  EventCategory(
      categoryName: "Identity & language",
      categoryImage: "assets/images/identity_image.jpeg"),
  EventCategory(
      categoryName: "Movements & polytics",
      categoryImage: "assets/images/movements_image.jpeg"),
  EventCategory(
      categoryName: "Music",
      categoryImage: "assets/images/music_category_image.jpeg"),
  EventCategory(
      categoryName: "Parents & Family",
      categoryImage: "assets/images/parents_category_image.jpeg"),
  EventCategory(
      categoryName: "Pets & Animals",
      categoryImage: "assets/images/pets_animals_image.jpeg"),
  EventCategory(
      categoryName: "Religion & Spiritualy",
      categoryImage: "assets/images/religion_category_image.jpeg"),
  EventCategory(
      categoryName: "Science & Education",
      categoryImage: "assets/images/science_image.jpeg"),
  EventCategory(
      categoryName: "Social Activities",
      categoryImage: "assets/images/social_category_image.jpeg"),
  EventCategory(
      categoryName: "Sports & Fitness",
      categoryImage: "assets/images/sport_fitness_image.jpeg"),
  EventCategory(
      categoryName: "Support & Coaching",
      categoryImage: "assets/images/coaching_image.jpeg"),
  EventCategory(
      categoryName: "Technology",
      categoryImage: "assets/images/tech_category_image.jpeg"),
  EventCategory(
      categoryName: "Travel & Outdoor",
      categoryImage: "assets/images/travel_out_image.jpeg"),
  EventCategory(
      categoryName: "Writing",
      categoryImage: "assets/images/writing_image.jpeg"),
];

class DiscoverGroupsScreen extends StatelessWidget {
  const DiscoverGroupsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(
          height: 32,
        ),
        SearchEventName(),
        SizedBox(
          height: 13,
        ),
        Text(
          'Search by category',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 23,
            color: Color(0xFF1B1A1D),
          ),
        ),
        SizedBox(
          height: 13,
        ),
        Expanded(
          child: ListView.separated(
            itemBuilder: (BuildContext context, int index) {
              int firstIndex = index * 2;
              int secondIndex = index * 2 + 1;

              EventCategory firstCategory = allCategories[firstIndex];
              EventCategory? secondCategory = secondIndex < allCategories.length
                  ? allCategories[secondIndex]
                  : null;

              return Row(
                children: [
                  Expanded(
                    child: InkWell(
                        onTap: () => print('First column'),
                        child: EventCategoryItem(eventCategory: firstCategory)),
                  ),
                  SizedBox(
                    width: 16.0,
                  ),
                  if (secondCategory != null)
                    Expanded(
                      child: InkWell(
                          onTap: () => print('second column'),
                          child:
                              EventCategoryItem(eventCategory: secondCategory)),
                    )
                  else
                    Expanded(child: Container())
                ],
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(
                height: 16,
              );
            },
            itemCount: (allCategories.length / 2).ceil(),
          ),
        )
      ]),
    )));
  }
}
