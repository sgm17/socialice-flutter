import 'package:freezed_annotation/freezed_annotation.dart';
part 'category_model.freezed.dart';
part 'category_model.g.dart';

@JsonSerializable(
  createToJson: true,
  fieldRename: FieldRename.snake,
  explicitToJson: true,
  checked: true,
)
@Freezed(toJson: false, fromJson: false)
class CategoryModel with _$CategoryModel {
  const CategoryModel._();

  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryModelToJson(this);

  const factory CategoryModel(
      {required String categoryName,
      required String categoryImage}) = _CategoryModel;

  static List<CategoryModel> allCategories = [
    CategoryModel(
        categoryName: "New Groups",
        categoryImage: "assets/images/new_groups_image.jpeg"),
    CategoryModel(
        categoryName: "Art & Culture",
        categoryImage: "assets/images/art_culture_image.jpeg"),
    CategoryModel(
        categoryName: "Career & business",
        categoryImage: "assets/images/career_business_image.jpeg"),
    CategoryModel(
        categoryName: "Community & Environment",
        categoryImage: "assets/images/community_image.jpeg"),
    CategoryModel(
        categoryName: "Dancing",
        categoryImage: "assets/images/dancing_category_image.jpeg"),
    CategoryModel(
        categoryName: "Games",
        categoryImage: "assets/images/games_category_image.jpeg"),
    CategoryModel(
        categoryName: "Health & Wellbeing",
        categoryImage: "assets/images/health_wellbeing_image.jpeg"),
    CategoryModel(
        categoryName: "Hobbies & Passions",
        categoryImage: "assets/images/hobbies_image.jpeg"),
    CategoryModel(
        categoryName: "Identity & language",
        categoryImage: "assets/images/identity_image.jpeg"),
    CategoryModel(
        categoryName: "Movements & polytics",
        categoryImage: "assets/images/movements_image.jpeg"),
    CategoryModel(
        categoryName: "Music",
        categoryImage: "assets/images/music_category_image.jpeg"),
    CategoryModel(
        categoryName: "Parents & Family",
        categoryImage: "assets/images/parents_category_image.jpeg"),
    CategoryModel(
        categoryName: "Pets & Animals",
        categoryImage: "assets/images/pets_animals_image.jpeg"),
    CategoryModel(
        categoryName: "Religion & Spiritualy",
        categoryImage: "assets/images/religion_category_image.jpeg"),
    CategoryModel(
        categoryName: "Science & Education",
        categoryImage: "assets/images/science_image.jpeg"),
    CategoryModel(
        categoryName: "Social Activities",
        categoryImage: "assets/images/social_category_image.jpeg"),
    CategoryModel(
        categoryName: "Sports & Fitness",
        categoryImage: "assets/images/sport_fitness_image.jpeg"),
    CategoryModel(
        categoryName: "Support & Coaching",
        categoryImage: "assets/images/coaching_image.jpeg"),
    CategoryModel(
        categoryName: "Technology",
        categoryImage: "assets/images/tech_category_image.jpeg"),
    CategoryModel(
        categoryName: "Travel & Outdoor",
        categoryImage: "assets/images/travel_out_image.jpeg"),
    CategoryModel(
        categoryName: "Writing",
        categoryImage: "assets/images/writing_image.jpeg"),
  ];
}
