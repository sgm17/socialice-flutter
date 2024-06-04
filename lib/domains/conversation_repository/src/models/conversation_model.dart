import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:socialice/domains/app_user_repository/src/models/app_user_model.dart';
import 'package:socialice/domains/conversation_repository/src/models/message_model.dart';
part 'conversation_model.freezed.dart';
part 'conversation_model.g.dart';

@JsonSerializable(
  createToJson: true,
  explicitToJson: true,
  checked: true,
)
@Freezed(toJson: false, fromJson: false)
class ConversationModel with _$ConversationModel {
  const ConversationModel._();

  factory ConversationModel.fromJson(Map<String, dynamic> json) =>
      _$ConversationModelFromJson(json);

  Map<String, dynamic> toJson() => _$ConversationModelToJson(this);

  const factory ConversationModel(
      {required String id,
      required AppUserModel userA,
      required AppUserModel userB,
      required MessageModel messages}) = _ConversationModel;
}
