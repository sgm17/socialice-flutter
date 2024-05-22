import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:socialice/domains/app_user_repository/src/models/app_user_model.dart';
import 'package:socialice/domains/event_repository/src/models/comment_model.dart';
import 'package:socialice/domains/event_repository/src/models/event_type.dart';
import 'package:socialice/helpers/serialize/timestamp_converter.dart';
part 'event_model.freezed.dart';
part 'event_model.g.dart';

@JsonSerializable(
  createToJson: true,
  fieldRename: FieldRename.snake,
  explicitToJson: true,
  checked: true,
)
@Freezed(toJson: false, fromJson: false)
class EventModel with _$EventModel {
  const EventModel._();

  factory EventModel.fromJson(Map<String, dynamic> json) =>
      _$EventModelFromJson(json);

  Map<String, dynamic> toJson() => _$EventModelToJson(this);

  static List<EventModel> getFutureEvents(List<EventModel> allEvents) =>
      // filter the old events and get the future ones
      allEvents.where((e) => !e.endTimestamp.isBefore(DateTime.now())).toList();

  static List<EventModel> getPastEvents(List<EventModel> allEvents) =>
      // filter the future events and get the past ones
      allEvents.where((e) => e.endTimestamp.isBefore(DateTime.now())).toList();

  // get the events where the user is the owner or the organizer
  static List<EventModel> getOrganizedEvents(
          List<EventModel> events, AppUserModel? appUserState) =>
      events
          .where((e) =>
              e.owner.id == appUserState?.id ||
              e.organizers.map((e) => e.id).toList().contains(appUserState?.id))
          .toList();

  const factory EventModel(
      {required int id,
      required String name,
      required String horizontalImage,
      required String verticalImage,
      required bool favourite,
      required bool joined,
      @TimestampConverter() required DateTime startTimestamp,
      @TimestampConverter() required DateTime endTimestamp,
      required String placeName,
      required String completeAddress,
      required AppUserModel owner,
      required int communityId,
      required int price,
      int? priceWithoutDiscount,
      required String communityImage,
      required String communityName,
      required List<AppUserModel> organizers,
      required double latitude,
      required double longitude,
      required List<String> photos,
      required List<CommentModel> comments,
      required List<AppUserModel> participants,
      required EventType eventType,
      @Default(false) bool? popular}) = _EventModel;
}
