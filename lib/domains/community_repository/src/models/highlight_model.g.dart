// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'highlight_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HighlightModel _$HighlightModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'HighlightModel',
      json,
      ($checkedConvert) {
        final val = HighlightModel(
          id: $checkedConvert('id', (v) => v as String),
          user: $checkedConvert(
              'user', (v) => AppUserModel.fromJson(v as Map<String, dynamic>)),
          image: $checkedConvert('image', (v) => v as String),
          createdAt: $checkedConvert('createdAt',
              (v) => const TimestampConverter().fromJson(v as String)),
        );
        return val;
      },
    );

Map<String, dynamic> _$HighlightModelToJson(HighlightModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user': instance.user.toJson(),
      'image': instance.image,
      'createdAt': const TimestampConverter().toJson(instance.createdAt),
    };
