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
          creator: $checkedConvert('creator',
              (v) => AppUserModel.fromJson(v as Map<String, dynamic>)),
          createdAt: $checkedConvert('created_at',
              (v) => const TimestampConverter().fromJson(v as String)),
          comment: $checkedConvert('comment', (v) => v as String),
          likes: $checkedConvert('likes', (v) => (v as num).toInt()),
        );
        return val;
      },
      fieldKeyMap: const {'createdAt': 'created_at'},
    );

Map<String, dynamic> _$CommentReplyModelToJson(CommentReplyModel instance) =>
    <String, dynamic>{
      'creator': instance.creator.toJson(),
      'created_at': const TimestampConverter().toJson(instance.createdAt),
      'comment': instance.comment,
      'likes': instance.likes,
    };
