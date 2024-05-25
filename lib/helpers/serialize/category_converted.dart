import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:socialice/domains/event_repository/src/models/category_model.dart';

class CategoryConverter implements JsonConverter<CategoryModel, String> {
  const CategoryConverter();

  @override
  CategoryModel fromJson(String value) {
    return CategoryModel.allCategories
        .where((e) => e.categoryName == value)
        .first;
  }

  @override
  String toJson(CategoryModel value) {
    return value.categoryName;
  }
}
