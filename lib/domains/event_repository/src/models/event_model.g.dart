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
          id: $checkedConvert('id', (v) => (v as num).toInt()),
          name: $checkedConvert('name', (v) => v as String),
          horizontalImage:
              $checkedConvert('horizontal_image', (v) => v as String),
          verticalImage: $checkedConvert('vertical_image', (v) => v as String),
          favourite: $checkedConvert('favourite', (v) => v as bool),
          joined: $checkedConvert('joined', (v) => v as bool),
          startTimestamp: $checkedConvert('start_timestamp',
              (v) => const TimestampConverter().fromJson(v as String)),
          endTimestamp: $checkedConvert('end_timestamp',
              (v) => const TimestampConverter().fromJson(v as String)),
          placeName: $checkedConvert('place_name', (v) => v as String),
          completeAddress:
              $checkedConvert('complete_address', (v) => v as String),
          owner: $checkedConvert(
              'owner', (v) => AppUserModel.fromJson(v as Map<String, dynamic>)),
          communityId:
              $checkedConvert('community_id', (v) => (v as num).toInt()),
          price: $checkedConvert('price', (v) => (v as num).toInt()),
          priceWithoutDiscount: $checkedConvert(
              'price_without_discount', (v) => (v as num?)?.toInt()),
          communityImage:
              $checkedConvert('community_image', (v) => v as String),
          communityName: $checkedConvert('community_name', (v) => v as String),
          organizers: $checkedConvert(
              'organizers',
              (v) => (v as List<dynamic>)
                  .map((e) => AppUserModel.fromJson(e as Map<String, dynamic>))
                  .toList()),
          latitude: $checkedConvert('latitude', (v) => (v as num).toDouble()),
          longitude: $checkedConvert('longitude', (v) => (v as num).toDouble()),
          photos: $checkedConvert('photos',
              (v) => (v as List<dynamic>).map((e) => e as String).toList()),
          comments: $checkedConvert(
              'comments',
              (v) => (v as List<dynamic>)
                  .map((e) => CommentModel.fromJson(e as Map<String, dynamic>))
                  .toList()),
          participants: $checkedConvert(
              'participants',
              (v) => (v as List<dynamic>)
                  .map((e) => AppUserModel.fromJson(e as Map<String, dynamic>))
                  .toList()),
          eventType: $checkedConvert(
              'event_type', (v) => $enumDecode(_$EventTypeEnumMap, v)),
          popular: $checkedConvert('popular', (v) => v as bool?),
        );
        return val;
      },
      fieldKeyMap: const {
        'horizontalImage': 'horizontal_image',
        'verticalImage': 'vertical_image',
        'startTimestamp': 'start_timestamp',
        'endTimestamp': 'end_timestamp',
        'placeName': 'place_name',
        'completeAddress': 'complete_address',
        'communityId': 'community_id',
        'priceWithoutDiscount': 'price_without_discount',
        'communityImage': 'community_image',
        'communityName': 'community_name',
        'eventType': 'event_type'
      },
    );

Map<String, dynamic> _$EventModelToJson(EventModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'horizontal_image': instance.horizontalImage,
      'vertical_image': instance.verticalImage,
      'favourite': instance.favourite,
      'joined': instance.joined,
      'start_timestamp':
          const TimestampConverter().toJson(instance.startTimestamp),
      'end_timestamp': const TimestampConverter().toJson(instance.endTimestamp),
      'place_name': instance.placeName,
      'complete_address': instance.completeAddress,
      'owner': instance.owner.toJson(),
      'community_id': instance.communityId,
      'price': instance.price,
      'price_without_discount': instance.priceWithoutDiscount,
      'community_image': instance.communityImage,
      'community_name': instance.communityName,
      'organizers': instance.organizers.map((e) => e.toJson()).toList(),
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'photos': instance.photos,
      'comments': instance.comments.map((e) => e.toJson()).toList(),
      'participants': instance.participants.map((e) => e.toJson()).toList(),
      'event_type': _$EventTypeEnumMap[instance.eventType]!,
      'popular': instance.popular,
    };

const _$EventTypeEnumMap = {
  EventType.free: 'free',
  EventType.entrancePayment: 'entrance_payment',
  EventType.payment: 'payment',
};
