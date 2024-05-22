// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'highlighted_moment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HighlightedMomentModel _$HighlightedMomentModelFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'HighlightedMomentModel',
      json,
      ($checkedConvert) {
        final val = HighlightedMomentModel(
          event: $checkedConvert(
              'event', (v) => EventModel.fromJson(v as Map<String, dynamic>)),
          images: $checkedConvert(
              'images',
              (v) => (v as List<dynamic>)
                  .map((e) =>
                      HighlightedImageModel.fromJson(e as Map<String, dynamic>))
                  .toList()),
          timestamp: $checkedConvert('timestamp',
              (v) => const TimestampConverter().fromJson(v as String)),
        );
        return val;
      },
    );

Map<String, dynamic> _$HighlightedMomentModelToJson(
        HighlightedMomentModel instance) =>
    <String, dynamic>{
      'event': instance.event.toJson(),
      'images': instance.images.map((e) => e.toJson()).toList(),
      'timestamp': const TimestampConverter().toJson(instance.timestamp),
    };
