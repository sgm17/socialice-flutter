// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CommentModel _$CommentModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'CommentModel',
      json,
      ($checkedConvert) {
        final val = CommentModel(
          id: $checkedConvert('id', (v) => v as String),
          creator: $checkedConvert('creator',
              (v) => AppUserModel.fromJson(v as Map<String, dynamic>)),
          eventId: $checkedConvert('eventId', (v) => v as String),
          comment: $checkedConvert('comment', (v) => v as String),
          likes: $checkedConvert('likes',
              (v) => (v as List<dynamic>).map((e) => e as String).toList()),
          replies: $checkedConvert(
              'replies',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      CommentReplyModel.fromJson(e as Map<String, dynamic>))
                  .toList()),
          reports: $checkedConvert('reports',
              (v) => (v as List<dynamic>).map((e) => e as String).toList()),
          createdAt: $checkedConvert('createdAt',
              (v) => const TimestampConverter().fromJson(v as String)),
        );
        return val;
      },
    );

Map<String, dynamic> _$CommentModelToJson(CommentModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'creator': instance.creator.toJson(),
      'eventId': instance.eventId,
      'comment': instance.comment,
      'likes': instance.likes,
      'replies': instance.replies?.map((e) => e.toJson()).toList(),
      'reports': instance.reports,
      'createdAt': const TimestampConverter().toJson(instance.createdAt),
    };
