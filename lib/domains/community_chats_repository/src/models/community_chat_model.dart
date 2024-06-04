import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:socialice/domains/community_chats_repository/src/models/community_message_model.dart';
import 'package:socialice/helpers/serialize/timestamp_converter.dart';
part 'community_chat_model.freezed.dart';
part 'community_chat_model.g.dart';

@JsonSerializable(
  createToJson: true,
  explicitToJson: true,
  checked: true,
)
@Freezed(toJson: false, fromJson: false)
class CommunityChatModel with _$CommunityChatModel {
  const CommunityChatModel._();

  factory CommunityChatModel.fromJson(Map<String, dynamic> json) =>
      _$CommunityChatModelFromJson(json);

  Map<String, dynamic> toJson() => _$CommunityChatModelToJson(this);

  const factory CommunityChatModel(
      {required String id,
      required String communityId,
      required List<CommunityMessageModel> messages,
      @TimestampConverter() required DateTime createdAt}) = _CommunityChatModel;
}
