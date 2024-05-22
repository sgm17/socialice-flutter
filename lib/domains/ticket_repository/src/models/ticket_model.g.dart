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
          qrCode: $checkedConvert('qr_code', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {'qrCode': 'qr_code'},
    );

Map<String, dynamic> _$TicketModelToJson(TicketModel instance) =>
    <String, dynamic>{
      'event': instance.event.toJson(),
      'qr_code': instance.qrCode,
    };
