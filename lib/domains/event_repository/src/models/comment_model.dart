import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:socialice/domains/app_user_repository/src/models/app_user_model.dart';
import 'package:socialice/domains/event_repository/src/models/comment_reply_model.dart';
import 'package:socialice/helpers/serialize/timestamp_converter.dart';
part 'comment_model.freezed.dart';
part 'comment_model.g.dart';

@JsonSerializable(
  createToJson: true,
  explicitToJson: true,
  checked: true,
)
@Freezed(toJson: false, fromJson: false)
class CommentModel with _$CommentModel {
  const CommentModel._();

  factory CommentModel.fromJson(Map<String, dynamic> json) =>
      _$CommentModelFromJson(json);

  Map<String, dynamic> toJson() => _$CommentModelToJson(this);

  const factory CommentModel(
      {required String id,
      required AppUserModel creator,
      required String eventId,
      required String comment,
      @Default([]) List<String>? likes,
      @Default([]) List<CommentReplyModel>? replies,
      @TimestampConverter() required DateTime createdAt}) = _CommentModel;
}
