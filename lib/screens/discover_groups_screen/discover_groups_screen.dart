import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:socialice/domains/event_repository/src/models/category_model.dart';
import 'package:socialice/providers/categories_provider/categories_provider.dart';
import 'package:socialice/widgets/search_event_name.dart';
import 'package:socialice/widgets/skelton.dart';

class DiscoverGroupsScreen extends ConsumerWidget {
  const DiscoverGroupsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categoriesState = ref.watch(categoriesFutureProvider);

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
          child: categoriesState.when(
            data: (categories) => ListView.separated(
              itemBuilder: (BuildContext context, int index) {
                int firstIndex = index * 2;
                int secondIndex = index * 2 + 1;

                CategoryModel firstCategory = categories[firstIndex];
                CategoryModel? secondCategory = secondIndex < categories.length
                    ? categories[secondIndex]
                    : null;

                return Row(
                  children: [
                    Expanded(
                      child: InkWell(
                          onTap: () => print('First column'),
                          child:
                              EventCategoryItem(eventCategory: firstCategory)),
                    ),
                    SizedBox(
                      width: 16.0,
                    ),
                    if (secondCategory != null)
                      Expanded(
                        child: InkWell(
                            onTap: () => print('second column'),
                            child: EventCategoryItem(
                                eventCategory: secondCategory)),
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
              itemCount: (categories.length / 2).ceil(),
            ),
            loading: () {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  for (int i = 0; i < 3; i++)
                    Padding(
                      padding: EdgeInsets.only(top: i != 0 ? 16.0 : 0.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Skelton(
                                    height: 132,
                                    borderRadius: 8,
                                    isProfileImage: false),
                                SizedBox(
                                  height: 11,
                                ),
                                Skelton(
                                    height: 23,
                                    borderRadius: 6,
                                    isProfileImage: false)
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Skelton(
                                    height: 132,
                                    borderRadius: 8,
                                    isProfileImage: false),
                                SizedBox(
                                  height: 11,
                                ),
                                Skelton(
                                    height: 23,
                                    borderRadius: 6,
                                    isProfileImage: false)
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                ],
              );
            },
            error: (error, stackTrace) => SizedBox.shrink(),
          ),
        )
      ]),
    )));
  }
}
