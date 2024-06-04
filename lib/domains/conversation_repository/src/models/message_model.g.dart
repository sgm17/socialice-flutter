// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MessageModel _$MessageModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'MessageModel',
      json,
      ($checkedConvert) {
        final val = MessageModel(
          id: $checkedConvert('id', (v) => v as String),
          sender: $checkedConvert('sender',
              (v) => AppUserModel.fromJson(v as Map<String, dynamic>)),
          receiver: $checkedConvert('receiver',
              (v) => AppUserModel.fromJson(v as Map<String, dynamic>)),
          conversation: $checkedConvert('conversation',
              (v) => ConversationModel.fromJson(v as Map<String, dynamic>)),
          message: $checkedConvert('message', (v) => v as String),
          createdAt: $checkedConvert('createdAt',
              (v) => const TimestampConverter().fromJson(v as String)),
        );
        return val;
      },
    );

Map<String, dynamic> _$MessageModelToJson(MessageModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sender': instance.sender.toJson(),
      'receiver': instance.receiver.toJson(),
      'conversation': instance.conversation.toJson(),
      'message': instance.message,
      'createdAt': const TimestampConverter().toJson(instance.createdAt),
    };
