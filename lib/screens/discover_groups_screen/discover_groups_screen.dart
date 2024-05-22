import 'package:flutter/material.dart';
import 'package:socialice/domains/event_repository/src/models/category_model.dart';
import 'package:socialice/widgets/search_event_name.dart';

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

              CategoryModel firstCategory =
                  CategoryModel.allCategories[firstIndex];
              CategoryModel? secondCategory =
                  secondIndex < CategoryModel.allCategories.length
                      ? CategoryModel.allCategories[secondIndex]
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
            itemCount: (CategoryModel.allCategories.length / 2).ceil(),
          ),
        )
      ]),
    )));
  }
}
