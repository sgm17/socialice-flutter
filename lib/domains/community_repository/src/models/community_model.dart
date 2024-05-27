import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:socialice/domains/app_user_repository/src/models/app_user_model.dart';
import 'package:socialice/domains/event_repository/src/models/category_model.dart';
import 'package:socialice/domains/event_repository/src/models/event_model.dart';
part 'community_model.freezed.dart';
part 'community_model.g.dart';

@JsonSerializable(
  createToJson: true,
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
      {required String id,
      required AppUserModel owner,
      required String image,
      required String name,
      @Default([]) List<AppUserModel>? members,
      required String city,
      required String description,
      @Default([]) List<EventModel>? events,
      required CategoryModel category}) = _CommunityModel;
}
