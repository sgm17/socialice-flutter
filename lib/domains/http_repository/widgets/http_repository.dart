import 'package:socialice/domains/app_user_repository/src/models/app_user_model.dart';
import 'package:socialice/domains/app_user_repository/src/models/interest_model.dart';
import 'package:socialice/domains/community_repository/src/models/community_model.dart';
import 'package:socialice/domains/community_repository/src/models/highlighted_image_model.dart';
import 'package:socialice/domains/event_repository/src/models/category_model.dart';
import 'package:socialice/domains/event_repository/src/models/comment_model.dart';
import 'package:socialice/domains/event_repository/src/models/comment_reply_model.dart';
import 'package:socialice/domains/event_repository/src/models/event_model.dart';
import 'package:socialice/domains/event_repository/src/models/event_type.dart';

abstract class HttpRepository {
  // AppUserModel
  // GET /api/v1/user
  Future<AppUserModel> requestAppUserModel();
  // GET /api/v1/user?id={id}
  Future<AppUserModel> requestAppUserModelById({required String id});
  // POST /api/v1/user
  Future<AppUserModel> createAppUserModel(
      {required String uuid,
      required String name,
      required String surname,
      required String username,
      required String email,
      required String location,
      required double latitude,
      required double longitude});
  // PUT /api/v1/user
  Future<AppUserModel> updateAppUserModel(
      {required String name,
      required String surname,
      required String username,
      required String description,
      String? profileImage,
      required String location,
      required double latitude,
      required double longitude});
  // DELETE /api/v1/user
  Future<bool> deleteAppUserModel();
  // PUT /api/v1/favourites
  Future<AppUserModel> updateFavourites({required String eventId});
  // PUT /api/v1/interests
  Future<AppUserModel> updateInterests(
      {required List<InterestModel> interests});

  // EventModel
  // GET /api/v1/events
  Future<List<EventModel>> requestEventsModel();
  // POST /api/v1/events
  Future<EventModel> createEventModel(
      {required String name,
      required String description,
      required String image,
      required String placeName,
      required String completeAddress,
      required String communityId,
      required int startTimestamp,
      required int endTimestamp,
      required double latitude,
      required double longitude,
      required double price,
      required double priceWithoutDiscount,
      required EventType eventType});
  // PUT /api/v1/events
  Future<EventModel> updateEventModel(
      {required String id,
      required String name,
      required String description,
      required String image,
      required String placeName,
      required String completeAddress,
      required int startTimestamp,
      required int endTimestamp,
      required double latitude,
      required double longitude,
      required double price,
      required double priceWithoutDiscount,
      required EventType eventType});
  // PUT /api/v1/events
  Future<bool> deleteEventModel({required String id});
  // PUT /api/v1/highlighted-images
  Future<HighlightedImageModel> createHighlightedImagesModel(
      {required String eventId, required String image});
  // PUT /api/v1/organizers
  Future<EventModel> updateOrganizersMembers(
      {required String eventId, required String username});
  // PUT /api/v1/participants
  Future<EventModel> updateParticipants({required String eventId});
  // PUT /api/v1/photos
  Future<EventModel> updatePhotos(
      {required String eventId, required String photo});

  // CommunityModel
  // GET /api/v1/communities
  Future<List<CommunityModel>> requestCommunitiesModel();
  // POST /api/v1/communities
  Future<CommunityModel> createCommunityModel(
      {required String image,
      required String name,
      required String city,
      required String description,
      required CategoryModel category});
  // PUT /api/v1/communities
  Future<CommunityModel> updateCommunityModel(
      {required String id,
      required String image,
      required String name,
      required String city,
      required String description,
      required CategoryModel category});
  // DELETE /api/v1/communities
  Future<bool> deleteCommunityModel({required String communityId});
  // PUT /api/v1/members
  Future<CommunityModel> updateCommunityMembers({required String communityId});

  // CommentModel
  // POST /api/v1/comments
  Future<CommentModel> createCommentModel(
      {required String communityId, required String comment});
  // PUT /api/v1/comments
  Future<CommentModel> updateCommentModel({required String id});

  // CommentRepliesModel
  // POST /api/v1/comment-replies
  Future<CommentReplyModel> createCommentReplyModel(
      {required String parentCommentId, required String comment});
  // PUT /api/v1/comment-replies
  Future<CommentReplyModel> updateCommentReplyModel({required String id});
}
