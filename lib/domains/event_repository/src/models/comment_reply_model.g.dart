// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_reply_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CommentReplyModel _$CommentReplyModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'CommentReplyModel',
      json,
      ($checkedConvert) {
        final val = CommentReplyModel(
          id: $checkedConvert('id', (v) => v as String),
          creator: $checkedConvert('creator',
              (v) => AppUserModel.fromJson(v as Map<String, dynamic>)),
          createdAt: $checkedConvert('createdAt',
              (v) => const TimestampConverter().fromJson(v as String)),
          comment: $checkedConvert('comment', (v) => v as String),
          likes: $checkedConvert('likes',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$CommentReplyModelToJson(CommentReplyModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'creator': instance.creator.toJson(),
      'createdAt': const TimestampConverter().toJson(instance.createdAt),
      'comment': instance.comment,
      'likes': instance.likes,
    };
