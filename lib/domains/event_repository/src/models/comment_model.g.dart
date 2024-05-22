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
          creator: $checkedConvert('creator',
              (v) => AppUserModel.fromJson(v as Map<String, dynamic>)),
          createdAt: $checkedConvert('created_at',
              (v) => const TimestampConverter().fromJson(v as String)),
          comment: $checkedConvert('comment', (v) => v as String),
          likes: $checkedConvert('likes', (v) => (v as num).toInt()),
          commentReplies: $checkedConvert(
              'comment_replies',
              (v) => (v as List<dynamic>)
                  .map((e) =>
                      CommentReplyModel.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
      fieldKeyMap: const {
        'createdAt': 'created_at',
        'commentReplies': 'comment_replies'
      },
    );

Map<String, dynamic> _$CommentModelToJson(CommentModel instance) =>
    <String, dynamic>{
      'creator': instance.creator.toJson(),
      'created_at': const TimestampConverter().toJson(instance.createdAt),
      'comment': instance.comment,
      'likes': instance.likes,
      'comment_replies':
          instance.commentReplies.map((e) => e.toJson()).toList(),
    };
