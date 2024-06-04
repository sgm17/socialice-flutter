// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'community_chat_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CommunityChatModel _$CommunityChatModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'CommunityChatModel',
      json,
      ($checkedConvert) {
        final val = CommunityChatModel(
          id: $checkedConvert('id', (v) => v as String),
          communityId: $checkedConvert('communityId', (v) => v as String),
          messages: $checkedConvert(
              'messages',
              (v) => (v as List<dynamic>)
                  .map((e) =>
                      CommunityMessageModel.fromJson(e as Map<String, dynamic>))
                  .toList()),
          createdAt: $checkedConvert('createdAt',
              (v) => const TimestampConverter().fromJson(v as String)),
        );
        return val;
      },
    );

Map<String, dynamic> _$CommunityChatModelToJson(CommunityChatModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'communityId': instance.communityId,
      'messages': instance.messages.map((e) => e.toJson()).toList(),
      'createdAt': const TimestampConverter().toJson(instance.createdAt),
    };
