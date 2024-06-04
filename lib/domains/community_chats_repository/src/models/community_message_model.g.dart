// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'community_message_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CommunityMessageModel _$CommunityMessageModelFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'CommunityMessageModel',
      json,
      ($checkedConvert) {
        final val = CommunityMessageModel(
          id: $checkedConvert('id', (v) => v as String),
          user: $checkedConvert(
              'user', (v) => AppUserModel.fromJson(v as Map<String, dynamic>)),
          chat: $checkedConvert('chat',
              (v) => CommunityChatModel.fromJson(v as Map<String, dynamic>)),
          message: $checkedConvert('message', (v) => v as String),
          messages: $checkedConvert(
              'messages',
              (v) => (v as List<dynamic>)
                  .map((e) =>
                      CommunityMessageModel.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$CommunityMessageModelToJson(
        CommunityMessageModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user': instance.user.toJson(),
      'chat': instance.chat.toJson(),
      'message': instance.message,
      'messages': instance.messages.map((e) => e.toJson()).toList(),
    };
