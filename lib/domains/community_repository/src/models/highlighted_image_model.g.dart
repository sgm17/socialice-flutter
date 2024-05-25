// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'highlighted_image_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HighlightedImageModel _$HighlightedImageModelFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'HighlightedImageModel',
      json,
      ($checkedConvert) {
        final val = HighlightedImageModel(
          id: $checkedConvert('id', (v) => v as String),
          user: $checkedConvert(
              'user', (v) => AppUserModel.fromJson(v as Map<String, dynamic>)),
          event: $checkedConvert(
              'event', (v) => EventModel.fromJson(v as Map<String, dynamic>)),
          image: $checkedConvert('image', (v) => v as String),
          createdAt: $checkedConvert('createdAt',
              (v) => const TimestampConverter().fromJson(v as String)),
        );
        return val;
      },
    );

Map<String, dynamic> _$HighlightedImageModelToJson(
        HighlightedImageModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user': instance.user.toJson(),
      'event': instance.event.toJson(),
      'image': instance.image,
      'createdAt': const TimestampConverter().toJson(instance.createdAt),
    };
