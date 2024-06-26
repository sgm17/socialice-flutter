// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conversation_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConversationModel _$ConversationModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'ConversationModel',
      json,
      ($checkedConvert) {
        final val = ConversationModel(
          id: $checkedConvert('id', (v) => v as String),
          userA: $checkedConvert(
              'userA', (v) => AppUserModel.fromJson(v as Map<String, dynamic>)),
          userB: $checkedConvert(
              'userB', (v) => AppUserModel.fromJson(v as Map<String, dynamic>)),
          messages: $checkedConvert(
              'messages',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => MessageModel.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$ConversationModelToJson(ConversationModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userA': instance.userA.toJson(),
      'userB': instance.userB.toJson(),
      'messages': instance.messages?.map((e) => e.toJson()).toList(),
    };
