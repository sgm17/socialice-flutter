// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_chat_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EventChatModel _$EventChatModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'EventChatModel',
      json,
      ($checkedConvert) {
        final val = EventChatModel(
          id: $checkedConvert('id', (v) => v as String),
          eventId: $checkedConvert('eventId', (v) => v as String),
          messages: $checkedConvert(
              'messages',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      EventMessageModel.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$EventChatModelToJson(EventChatModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'eventId': instance.eventId,
      'messages': instance.messages?.map((e) => e.toJson()).toList(),
    };
