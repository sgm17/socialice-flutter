import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:socialice/domains/app_user_repository/src/models/app_user_model.dart';
import 'package:socialice/domains/community_repository/src/models/highlighted_moment_model.dart';
import 'package:socialice/domains/event_repository/src/models/category_model.dart';
import 'package:socialice/domains/event_repository/src/models/event_model.dart';
part 'community_model.freezed.dart';
part 'community_model.g.dart';

@JsonSerializable(
  createToJson: true,
  fieldRename: FieldRename.snake,
  explicitToJson: true,
  checked: true,
)
@Freezed(toJson: false, fromJson: false)
class CommunityModel with _$CommunityModel {
  const CommunityModel._();

  factory CommunityModel.fromJson(Map<String, dynamic> json) =>
      _$CommunityModelFromJson(json);

  Map<String, dynamic> toJson() => _$CommunityModelToJson(this);

  const factory CommunityModel(
      {required int id,
      required AppUserModel owner,
      required String image,
      required String name,
      required String city,
      required int totalMembers,
      required List<AppUserModel> lastEightMembers,
      required String description,
      required List<EventModel> futureEvents,
      required List<HighlightedMomentModel> pastEvents,
      required CategoryModel category}) = _CommunityModel;
}
