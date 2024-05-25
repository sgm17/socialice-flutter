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
          categoryName: $checkedConvert('categoryName', (v) => v as String),
          categoryImage: $checkedConvert('categoryImage', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$CategoryModelToJson(CategoryModel instance) =>
    <String, dynamic>{
      'categoryName': instance.categoryName,
      'categoryImage': instance.categoryImage,
    };
