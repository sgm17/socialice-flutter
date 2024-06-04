import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:socialice/domains/app_user_repository/src/models/app_user_model.dart';
import 'package:socialice/domains/community_chats_repository/src/models/community_chat_model.dart';
part 'community_message_model.freezed.dart';
part 'community_message_model.g.dart';

@JsonSerializable(
  createToJson: true,
  explicitToJson: true,
  checked: true,
)
@Freezed(toJson: false, fromJson: false)
class CommunityMessageModel with _$CommunityMessageModel {
  const CommunityMessageModel._();

  factory CommunityMessageModel.fromJson(Map<String, dynamic> json) =>
      _$CommunityMessageModelFromJson(json);

  Map<String, dynamic> toJson() => _$CommunityMessageModelToJson(this);

  const factory CommunityMessageModel(
      {required String id,
      required AppUserModel user,
      required CommunityChatModel chat,
      required String message,
      required List<CommunityMessageModel> messages}) = _CommunityMessageModel;
}
