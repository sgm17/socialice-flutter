import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:socialice/domains/app_user_repository/src/models/app_user_model.dart';
import 'package:socialice/domains/event_repository/src/models/event_model.dart';
import 'package:socialice/helpers/serialize/timestamp_converter.dart';
part 'highlighted_image_model.freezed.dart';
part 'highlighted_image_model.g.dart';

@JsonSerializable(
  createToJson: true,
  explicitToJson: true,
  checked: true,
)
@Freezed(toJson: false, fromJson: false)
class HighlightedImageModel with _$HighlightedImageModel {
  const HighlightedImageModel._();

  factory HighlightedImageModel.fromJson(Map<String, dynamic> json) =>
      _$HighlightedImageModelFromJson(json);

  Map<String, dynamic> toJson() => _$HighlightedImageModelToJson(this);

  const factory HighlightedImageModel({
    required String id,
    required AppUserModel user,
    required EventModel event,
    required String image,
    @TimestampConverter() required DateTime createdAt,
  }) = _HighlightedImageModel;
}
