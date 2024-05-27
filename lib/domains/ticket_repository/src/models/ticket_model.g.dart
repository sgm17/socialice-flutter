// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TicketModel _$TicketModelFromJson(Map<String, dynamic> json) => $checkedCreate(
      'TicketModel',
      json,
      ($checkedConvert) {
        final val = TicketModel(
          eventId: $checkedConvert('eventId', (v) => v as String),
          qrCode: $checkedConvert('qrCode', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$TicketModelToJson(TicketModel instance) =>
    <String, dynamic>{
      'eventId': instance.eventId,
      'qrCode': instance.qrCode,
    };
