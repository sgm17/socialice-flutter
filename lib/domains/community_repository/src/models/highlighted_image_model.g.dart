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
          creator: $checkedConvert('creator',
              (v) => AppUserModel.fromJson(v as Map<String, dynamic>)),
          createdAt: $checkedConvert('created_at',
              (v) => const TimestampConverter().fromJson(v as String)),
          eventTitle: $checkedConvert('event_title', (v) => v as String),
          event: $checkedConvert(
              'event', (v) => EventModel.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
      fieldKeyMap: const {
        'createdAt': 'created_at',
        'eventTitle': 'event_title'
      },
    );

Map<String, dynamic> _$HighlightedImageModelToJson(
        HighlightedImageModel instance) =>
    <String, dynamic>{
      'creator': instance.creator.toJson(),
      'created_at': const TimestampConverter().toJson(instance.createdAt),
      'event_title': instance.eventTitle,
      'event': instance.event.toJson(),
    };
