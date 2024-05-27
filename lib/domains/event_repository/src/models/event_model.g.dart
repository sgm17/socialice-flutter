// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EventModel _$EventModelFromJson(Map<String, dynamic> json) => $checkedCreate(
      'EventModel',
      json,
      ($checkedConvert) {
        final val = EventModel(
          id: $checkedConvert('id', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          description: $checkedConvert('description', (v) => v as String),
          image: $checkedConvert('image', (v) => v as String),
          placeName: $checkedConvert('placeName', (v) => v as String),
          completeAddress:
              $checkedConvert('completeAddress', (v) => v as String),
          community: $checkedConvert('community',
              (v) => CommunityModel.fromJson(v as Map<String, dynamic>)),
          price: $checkedConvert('price', (v) => (v as num?)?.toInt()),
          priceWithoutDiscount: $checkedConvert(
              'priceWithoutDiscount', (v) => (v as num?)?.toInt()),
          organizers: $checkedConvert(
              'organizers',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => AppUserModel.fromJson(e as Map<String, dynamic>))
                  .toList()),
          latitude: $checkedConvert('latitude', (v) => (v as num).toDouble()),
          longitude: $checkedConvert('longitude', (v) => (v as num).toDouble()),
          comments: $checkedConvert(
              'comments',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => CommentModel.fromJson(e as Map<String, dynamic>))
                  .toList()),
          participants: $checkedConvert(
              'participants',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => AppUserModel.fromJson(e as Map<String, dynamic>))
                  .toList()),
          eventType: $checkedConvert(
              'eventType', (v) => $enumDecode(_$EventTypeEnumMap, v)),
          popular: $checkedConvert('popular', (v) => v as bool),
          highlights: $checkedConvert(
              'highlights',
              (v) => (v as List<dynamic>?)
                  ?.map(
                      (e) => HighlightModel.fromJson(e as Map<String, dynamic>))
                  .toList()),
          reports: $checkedConvert('reports',
              (v) => (v as List<dynamic>).map((e) => e as String).toList()),
          startTimestamp: $checkedConvert('startTimestamp',
              (v) => const TimestampConverter().fromJson(v as String)),
          endTimestamp: $checkedConvert('endTimestamp',
              (v) => const TimestampConverter().fromJson(v as String)),
        );
        return val;
      },
    );

Map<String, dynamic> _$EventModelToJson(EventModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'image': instance.image,
      'placeName': instance.placeName,
      'completeAddress': instance.completeAddress,
      'community': instance.community.toJson(),
      'price': instance.price,
      'priceWithoutDiscount': instance.priceWithoutDiscount,
      'organizers': instance.organizers?.map((e) => e.toJson()).toList(),
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'comments': instance.comments?.map((e) => e.toJson()).toList(),
      'participants': instance.participants?.map((e) => e.toJson()).toList(),
      'eventType': _$EventTypeEnumMap[instance.eventType]!,
      'popular': instance.popular,
      'highlights': instance.highlights?.map((e) => e.toJson()).toList(),
      'reports': instance.reports,
      'startTimestamp':
          const TimestampConverter().toJson(instance.startTimestamp),
      'endTimestamp': const TimestampConverter().toJson(instance.endTimestamp),
    };

const _$EventTypeEnumMap = {
  EventType.free: 'free',
  EventType.entrancePayment: 'entrance_payment',
  EventType.payment: 'payment',
};
