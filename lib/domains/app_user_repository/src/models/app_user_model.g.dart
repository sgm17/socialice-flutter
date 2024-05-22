// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppUserModel _$AppUserModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'AppUserModel',
      json,
      ($checkedConvert) {
        final val = AppUserModel(
          id: $checkedConvert('id', (v) => (v as num).toInt()),
          profileImage: $checkedConvert('profile_image', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          surname: $checkedConvert('surname', (v) => v as String),
          username: $checkedConvert('username', (v) => v as String),
          location: $checkedConvert('location', (v) => v as String),
          latitude: $checkedConvert('latitude', (v) => (v as num).toDouble()),
          longitude: $checkedConvert('longitude', (v) => (v as num).toDouble()),
          description: $checkedConvert('description', (v) => v as String),
          createdCommunity: $checkedConvert(
              'created_community',
              (v) => v == null
                  ? null
                  : CommunityModel.fromJson(v as Map<String, dynamic>)),
          joinedCommunities: $checkedConvert(
              'joined_communities',
              (v) => (v as List<dynamic>)
                  .map(
                      (e) => CommunityModel.fromJson(e as Map<String, dynamic>))
                  .toList()),
          interests: $checkedConvert(
              'interests',
              (v) => (v as List<dynamic>)
                  .map((e) => InterestModel.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
      fieldKeyMap: const {
        'profileImage': 'profile_image',
        'createdCommunity': 'created_community',
        'joinedCommunities': 'joined_communities'
      },
    );

Map<String, dynamic> _$AppUserModelToJson(AppUserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'profile_image': instance.profileImage,
      'name': instance.name,
      'surname': instance.surname,
      'username': instance.username,
      'location': instance.location,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'description': instance.description,
      'created_community': instance.createdCommunity?.toJson(),
      'joined_communities':
          instance.joinedCommunities.map((e) => e.toJson()).toList(),
      'interests': instance.interests.map((e) => e.toJson()).toList(),
    };
