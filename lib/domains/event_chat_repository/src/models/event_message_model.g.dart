// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_message_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EventMessageModel _$EventMessageModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'EventMessageModel',
      json,
      ($checkedConvert) {
        final val = EventMessageModel(
          id: $checkedConvert('id', (v) => v as String),
          user: $checkedConvert(
              'user', (v) => AppUserModel.fromJson(v as Map<String, dynamic>)),
          chat: $checkedConvert('chat', (v) => EventChatModel.fromJson(v)),
          message: $checkedConvert('message', (v) => v as String),
          createdAt: $checkedConvert('createdAt',
              (v) => const TimestampConverter().fromJson(v as String)),
        );
        return val;
      },
    );

Map<String, dynamic> _$EventMessageModelToJson(EventMessageModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user': instance.user.toJson(),
      'chat': instance.chat.toJson(),
      'message': instance.message,
      'createdAt': const TimestampConverter().toJson(instance.createdAt),
    };
