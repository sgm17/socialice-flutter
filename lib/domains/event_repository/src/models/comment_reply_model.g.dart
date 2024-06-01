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
          commentId: $checkedConvert('commentId', (v) => v as String),
          creator: $checkedConvert('creator',
              (v) => AppUserModel.fromJson(v as Map<String, dynamic>)),
          commentReply: $checkedConvert('commentReply', (v) => v as String),
          likes: $checkedConvert('likes',
              (v) => (v as List<dynamic>).map((e) => e as String).toList()),
          reports: $checkedConvert('reports',
              (v) => (v as List<dynamic>).map((e) => e as String).toList()),
          createdAt: $checkedConvert('createdAt',
              (v) => const TimestampConverter().fromJson(v as String)),
        );
        return val;
      },
    );

Map<String, dynamic> _$CommentReplyModelToJson(CommentReplyModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'commentId': instance.commentId,
      'creator': instance.creator.toJson(),
      'commentReply': instance.commentReply,
      'likes': instance.likes,
      'reports': instance.reports,
      'createdAt': const TimestampConverter().toJson(instance.createdAt),
    };
