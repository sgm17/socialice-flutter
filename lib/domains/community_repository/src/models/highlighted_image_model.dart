import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:socialice/domains/app_user_repository/src/models/app_user_model.dart';
import 'package:socialice/domains/event_repository/src/models/event_model.dart';
import 'package:socialice/helpers/serialize/timestamp_converter.dart';
part 'highlighted_image_model.freezed.dart';
part 'highlighted_image_model.g.dart';

@JsonSerializable(
  createToJson: true,
  fieldRename: FieldRename.snake,
  explicitToJson: true,
  checked: true,
)
@Freezed(toJson: false, fromJson: false)
class HighlightedImageModel with _$HighlightedImageModel {
  const HighlightedImageModel._();

  factory HighlightedImageModel.fromJson(Map<String, dynamic> json) =>
      _$HighlightedImageModelFromJson(json);

  Map<String, dynamic> toJson() => _$HighlightedImageModelToJson(this);

  const factory HighlightedImageModel(
      {required AppUserModel creator,
      @TimestampConverter() required DateTime createdAt,
      required String eventTitle,
      required EventModel event}) = _HighlightedImageModel;
}
