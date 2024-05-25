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
          id: $checkedConvert('id', (v) => v as String),
          uid: $checkedConvert('uid', (v) => v as String),
          profileImage: $checkedConvert('profileImage', (v) => v as String?),
          name: $checkedConvert('name', (v) => v as String),
          surname: $checkedConvert('surname', (v) => v as String),
          username: $checkedConvert('username', (v) => v as String),
          email: $checkedConvert('email', (v) => v as String),
          location: $checkedConvert('location', (v) => v as String),
          latitude: $checkedConvert('latitude', (v) => (v as num).toDouble()),
          longitude: $checkedConvert('longitude', (v) => (v as num).toDouble()),
          description: $checkedConvert('description', (v) => v as String?),
          createdCommunity: $checkedConvert(
              'createdCommunity',
              (v) => v == null
                  ? null
                  : CommunityModel.fromJson(v as Map<String, dynamic>)),
          events: $checkedConvert(
              'events',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => EventModel.fromJson(e as Map<String, dynamic>))
                  .toList()),
          organizer: $checkedConvert(
              'organizer',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => EventModel.fromJson(e as Map<String, dynamic>))
                  .toList()),
          communities: $checkedConvert(
              'communities',
              (v) => (v as List<dynamic>?)
                  ?.map(
                      (e) => CommunityModel.fromJson(e as Map<String, dynamic>))
                  .toList()),
          favourites: $checkedConvert('favourites',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          interests: $checkedConvert(
              'interests',
              (v) => (v as List<dynamic>?)
                  ?.map(
                      (e) => InterestModel.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$AppUserModelToJson(AppUserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'uid': instance.uid,
      'profileImage': instance.profileImage,
      'name': instance.name,
      'surname': instance.surname,
      'username': instance.username,
      'email': instance.email,
      'location': instance.location,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'description': instance.description,
      'createdCommunity': instance.createdCommunity?.toJson(),
      'events': instance.events?.map((e) => e.toJson()).toList(),
      'organizer': instance.organizer?.map((e) => e.toJson()).toList(),
      'communities': instance.communities?.map((e) => e.toJson()).toList(),
      'favourites': instance.favourites,
      'interests': instance.interests?.map((e) => e.toJson()).toList(),
    };
