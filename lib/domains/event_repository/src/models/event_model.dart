import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:socialice/domains/app_user_repository/src/models/app_user_model.dart';
import 'package:socialice/domains/community_repository/src/models/community_model.dart';
import 'package:socialice/domains/community_repository/src/models/highlight_model.dart';
import 'package:socialice/domains/event_repository/src/models/comment_model.dart';
import 'package:socialice/domains/event_repository/src/models/event_type.dart';
import 'package:socialice/helpers/serialize/timestamp_converter.dart';
part 'event_model.freezed.dart';
part 'event_model.g.dart';

@JsonSerializable(
  createToJson: true,
  explicitToJson: true,
  checked: true,
)
@Freezed(toJson: false, fromJson: false)
class EventModel with _$EventModel {
  const EventModel._();

  factory EventModel.fromJson(Map<String, dynamic> json) =>
      _$EventModelFromJson(json);

  Map<String, dynamic> toJson() => _$EventModelToJson(this);

  static List<EventModel> getFutureEvents(List<EventModel> events) =>
      // filter the old events and get the future ones
      events.where((e) => !e.endDate.isBefore(DateTime.now())).toList();

  static List<EventModel> getPastEvents(List<EventModel> events) =>
      // filter the future events and get the past ones
      events.where((e) => e.endDate.isBefore(DateTime.now())).toList();

  const factory EventModel({
    required String id,
    required String name,
    required String description,
    required String image,
    required String placeName,
    required String completeAddress,
    required CommunityModel community,
    int? price,
    int? priceWithoutDiscount,
    @Default([]) List<AppUserModel>? organizers,
    required double latitude,
    required double longitude,
    @Default([]) List<CommentModel>? comments,
    @Default([]) List<AppUserModel>? participants,
    required EventType eventType,
    @Default(false) bool popular,
    @Default([]) List<HighlightModel>? highlights,
    required List<String> reports,
    @TimestampConverter() required DateTime startDate,
    @TimestampConverter() required DateTime endDate,
  }) = _EventModel;
}
