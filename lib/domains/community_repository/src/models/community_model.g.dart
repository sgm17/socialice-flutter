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
          id: $checkedConvert('id', (v) => (v as num).toInt()),
          owner: $checkedConvert(
              'owner', (v) => AppUserModel.fromJson(v as Map<String, dynamic>)),
          image: $checkedConvert('image', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          city: $checkedConvert('city', (v) => v as String),
          totalMembers:
              $checkedConvert('total_members', (v) => (v as num).toInt()),
          lastEightMembers: $checkedConvert(
              'last_eight_members',
              (v) => (v as List<dynamic>)
                  .map((e) => AppUserModel.fromJson(e as Map<String, dynamic>))
                  .toList()),
          description: $checkedConvert('description', (v) => v as String),
          futureEvents: $checkedConvert(
              'future_events',
              (v) => (v as List<dynamic>)
                  .map((e) => EventModel.fromJson(e as Map<String, dynamic>))
                  .toList()),
          pastEvents: $checkedConvert(
              'past_events',
              (v) => (v as List<dynamic>)
                  .map((e) => HighlightedMomentModel.fromJson(
                      e as Map<String, dynamic>))
                  .toList()),
          category: $checkedConvert('category',
              (v) => CategoryModel.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
      fieldKeyMap: const {
        'totalMembers': 'total_members',
        'lastEightMembers': 'last_eight_members',
        'futureEvents': 'future_events',
        'pastEvents': 'past_events'
      },
    );

Map<String, dynamic> _$CommunityModelToJson(CommunityModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'owner': instance.owner.toJson(),
      'image': instance.image,
      'name': instance.name,
      'city': instance.city,
      'total_members': instance.totalMembers,
      'last_eight_members':
          instance.lastEightMembers.map((e) => e.toJson()).toList(),
      'description': instance.description,
      'future_events': instance.futureEvents.map((e) => e.toJson()).toList(),
      'past_events': instance.pastEvents.map((e) => e.toJson()).toList(),
      'category': instance.category.toJson(),
    };
