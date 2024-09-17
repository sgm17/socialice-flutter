import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:socialice/domains/event_chat_repository/src/models/event_message_model.dart';
part 'event_chat_model.freezed.dart';
part 'event_chat_model.g.dart';

@JsonSerializable(
  createToJson: true,
  explicitToJson: true,
  checked: true,
)
@Freezed(toJson: false, fromJson: false)
class EventChatModel with _$EventChatModel {
  const EventChatModel._();

  factory EventChatModel.fromJson(json) => _$EventChatModelFromJson(json);

  Map<String, dynamic> toJson() => _$EventChatModelToJson(this);

  const factory EventChatModel(
      {required String id,
      required String eventId,
      @Default([]) List<EventMessageModel>? messages}) = _EventChatModel;
}
