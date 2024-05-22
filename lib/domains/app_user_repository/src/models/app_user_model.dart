import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:socialice/domains/app_user_repository/src/models/interest_model.dart';
import 'package:socialice/domains/community_repository/src/models/community_model.dart';
part 'app_user_model.freezed.dart';
part 'app_user_model.g.dart';

@JsonSerializable(
  createToJson: true,
  fieldRename: FieldRename.snake,
  explicitToJson: true,
  checked: true,
)
@Freezed(toJson: false, fromJson: false)
class AppUserModel with _$AppUserModel {
  const AppUserModel._();

  factory AppUserModel.fromJson(Map<String, dynamic> json) =>
      _$AppUserModelFromJson(json);

  Map<String, dynamic> toJson() => _$AppUserModelToJson(this);

  const factory AppUserModel(
      {required int id,
      required String profileImage,
      required String name,
      required String surname,
      required String username,
      required String location,
      required double latitude,
      required double longitude,
      required String description,
      CommunityModel? createdCommunity,
      required List<CommunityModel> joinedCommunities,
      required List<InterestModel> interests}) = _AppUserModel;
}
