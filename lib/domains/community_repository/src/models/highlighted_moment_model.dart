import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:socialice/domains/community_repository/src/models/highlighted_image_model.dart';
import 'package:socialice/domains/event_repository/src/models/event_model.dart';
import 'package:socialice/helpers/serialize/timestamp_converter.dart';
part 'highlighted_moment_model.freezed.dart';
part 'highlighted_moment_model.g.dart';

@JsonSerializable(
  createToJson: true,
  fieldRename: FieldRename.snake,
  explicitToJson: true,
  checked: true,
)
@Freezed(toJson: false, fromJson: false)
class HighlightedMomentModel with _$HighlightedMomentModel {
  const HighlightedMomentModel._();

  factory HighlightedMomentModel.fromJson(Map<String, dynamic> json) =>
      _$HighlightedMomentModelFromJson(json);

  Map<String, dynamic> toJson() => _$HighlightedMomentModelToJson(this);

  const factory HighlightedMomentModel(
          {required EventModel event,
          required List<HighlightedImageModel> images,
          @TimestampConverter() required DateTime timestamp}) =
      _HighlightedMomentModel;
}
