import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:socialice/domains/app_user_repository/src/models/interest_model.dart';
import 'package:socialice/domains/community_repository/src/models/community_model.dart';
import 'package:socialice/domains/event_repository/src/models/event_model.dart';
part 'app_user_model.freezed.dart';
part 'app_user_model.g.dart';

@JsonSerializable(
  createToJson: true,
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
      {required String id,
      required String uid,
      String? profileImage,
      required String name,
      required String surname,
      required String username,
      required String email,
      required String location,
      required double latitude,
      required double longitude,
      @Default("Hey, I'm using Socialice") String? description,
      CommunityModel? createdCommunity,
      @Default([]) List<EventModel>? events,
      @Default([]) List<EventModel>? organizer,
      @Default([]) List<CommunityModel>? communities,
      @Default([]) List<String>? favourites,
      @Default([]) List<InterestModel>? interests}) = _AppUserModel;
}
