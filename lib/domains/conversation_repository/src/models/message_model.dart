import 'package:socialice/domains/app_user_repository/src/models/app_user_model.dart';
import 'package:socialice/helpers/serialize/timestamp_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'message_model.freezed.dart';
part 'message_model.g.dart';

@JsonSerializable(
  createToJson: true,
  explicitToJson: true,
  checked: true,
)
@Freezed(toJson: false, fromJson: false)
class MessageModel with _$MessageModel {
  const MessageModel._();

  factory MessageModel.fromJson(Map<String, dynamic> json) =>
      _$MessageModelFromJson(json);

  Map<String, dynamic> toJson() => _$MessageModelToJson(this);

  const factory MessageModel(
      {required String id,
      required AppUserModel sender,
      required AppUserModel receiver,
      required String conversationId,
      required String message,
      @TimestampConverter() required DateTime createdAt}) = _MessageModel;
}
