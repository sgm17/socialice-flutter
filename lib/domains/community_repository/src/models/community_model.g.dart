// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'community_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CommunityModel _$CommunityModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'CommunityModel',
      json,
      ($checkedConvert) {
        final val = CommunityModel(
          id: $checkedConvert('id', (v) => v as String),
          owner: $checkedConvert(
              'owner', (v) => AppUserModel.fromJson(v as Map<String, dynamic>)),
          image: $checkedConvert('image', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          members: $checkedConvert(
              'members',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => AppUserModel.fromJson(e as Map<String, dynamic>))
                  .toList()),
          city: $checkedConvert('city', (v) => v as String),
          description: $checkedConvert('description', (v) => v as String),
          events: $checkedConvert(
              'events',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => EventModel.fromJson(e as Map<String, dynamic>))
                  .toList()),
          category: $checkedConvert('category',
              (v) => const CategoryConverter().fromJson(v as String)),
        );
        return val;
      },
    );

Map<String, dynamic> _$CommunityModelToJson(CommunityModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'owner': instance.owner.toJson(),
      'image': instance.image,
      'name': instance.name,
      'members': instance.members?.map((e) => e.toJson()).toList(),
      'city': instance.city,
      'description': instance.description,
      'events': instance.events?.map((e) => e.toJson()).toList(),
      'category': const CategoryConverter().toJson(instance.category),
    };
