import 'package:freezed_annotation/freezed_annotation.dart';
part 'interest_model.freezed.dart';
part 'interest_model.g.dart';

@JsonSerializable(
  createToJson: true,
  fieldRename: FieldRename.snake,
  explicitToJson: true,
  checked: true,
)
@Freezed(toJson: false, fromJson: false)
class InterestModel with _$InterestModel {
  const InterestModel._();

  factory InterestModel.fromJson(Map<String, dynamic> json) =>
      _$InterestModelFromJson(json);

  Map<String, dynamic> toJson() => _$InterestModelToJson(this);

  const factory InterestModel({
    required int id,
    required String name,
  }) = _CategoryModel;
}
