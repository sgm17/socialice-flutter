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
          event: $checkedConvert(
              'event', (v) => EventModel.fromJson(v as Map<String, dynamic>)),
          qrCode: $checkedConvert('qrCode', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$TicketModelToJson(TicketModel instance) =>
    <String, dynamic>{
      'event': instance.event.toJson(),
      'qrCode': instance.qrCode,
    };
