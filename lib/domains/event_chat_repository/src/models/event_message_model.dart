import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:socialice/domains/app_user_repository/src/models/app_user_model.dart';
import 'package:socialice/domains/event_chat_repository/src/models/event_chat_model.dart';
import 'package:socialice/helpers/serialize/timestamp_converter.dart';
part 'event_message_model.freezed.dart';
part 'event_message_model.g.dart';

@JsonSerializable(
  createToJson: true,
  explicitToJson: true,
  checked: true,
)
@Freezed(toJson: false, fromJson: false)
class EventMessageModel with _$EventMessageModel {
  const EventMessageModel._();

  factory EventMessageModel.fromJson(Map<String, dynamic> json) =>
      _$EventMessageModelFromJson(json);

  Map<String, dynamic> toJson() => _$EventMessageModelToJson(this);

  const factory EventMessageModel(
      {required String id,
      required AppUserModel user,
      required EventChatModel chat,
      required String message,
      @TimestampConverter() required DateTime createdAt}) = _EventMessageModel;
}
