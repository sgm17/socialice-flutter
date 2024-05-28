import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:socialice/domains/app_user_repository/src/models/app_user_model.dart';
import 'package:socialice/helpers/serialize/timestamp_converter.dart';
part 'highlight_model.freezed.dart';
part 'highlight_model.g.dart';

@JsonSerializable(
  createToJson: true,
  explicitToJson: true,
  checked: true,
)
@Freezed(toJson: false, fromJson: false)
class HighlightModel with _$HighlightModel {
  const HighlightModel._();

  factory HighlightModel.fromJson(Map<String, dynamic> json) =>
      _$HighlightModelFromJson(json);

  Map<String, dynamic> toJson() => _$HighlightModelToJson(this);

  const factory HighlightModel({
    required String id,
    required AppUserModel user,
    required String image,
    @TimestampConverter() required DateTime createdAt,
  }) = _HighlightModel;
}
