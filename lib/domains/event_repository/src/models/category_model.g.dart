// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoryModel _$CategoryModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'CategoryModel',
      json,
      ($checkedConvert) {
        final val = CategoryModel(
          categoryName: $checkedConvert('category_name', (v) => v as String),
          categoryImage: $checkedConvert('category_image', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {
        'categoryName': 'category_name',
        'categoryImage': 'category_image'
      },
    );

Map<String, dynamic> _$CategoryModelToJson(CategoryModel instance) =>
    <String, dynamic>{
      'category_name': instance.categoryName,
      'category_image': instance.categoryImage,
    };
