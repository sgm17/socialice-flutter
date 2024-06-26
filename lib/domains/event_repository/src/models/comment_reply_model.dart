import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:socialice/domains/app_user_repository/src/models/app_user_model.dart';
import 'package:socialice/helpers/serialize/timestamp_converter.dart';
part 'comment_reply_model.freezed.dart';
part 'comment_reply_model.g.dart';

@JsonSerializable(
  createToJson: true,
  explicitToJson: true,
  checked: true,
)
@Freezed(toJson: false, fromJson: false)
class CommentReplyModel with _$CommentReplyModel {
  const CommentReplyModel._();

  factory CommentReplyModel.fromJson(Map<String, dynamic> json) =>
      _$CommentReplyModelFromJson(json);

  Map<String, dynamic> toJson() => _$CommentReplyModelToJson(this);

  const factory CommentReplyModel({
    required String id,
    required String commentId,
    required AppUserModel creator,
    required String commentReply,
    required List<String> likes,
    required List<String> reports,
    @TimestampConverter() required DateTime createdAt,
  }) = _CommentReplyModel;
}
