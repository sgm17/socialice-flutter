import 'package:socialice/domains/app_user_repository/src/models/app_user_model.dart';
import 'package:socialice/domains/app_user_repository/src/models/interest_model.dart';
import 'package:socialice/domains/community_repository/src/models/community_model.dart';
import 'package:socialice/domains/community_repository/src/models/highlight_model.dart';
import 'package:socialice/domains/conversation_repository/src/models/conversation_model.dart';
import 'package:socialice/domains/conversation_repository/src/models/message_model.dart';
import 'package:socialice/domains/event_repository/src/models/category_model.dart';
import 'package:socialice/domains/event_repository/src/models/comment_model.dart';
import 'package:socialice/domains/event_repository/src/models/comment_reply_model.dart';
import 'package:socialice/domains/event_repository/src/models/event_model.dart';
import 'package:socialice/domains/event_repository/src/models/event_type.dart';
import 'package:socialice/domains/ticket_repository/src/models/ticket_model.dart';

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
  // GET /api/v1/interests
  Future<List<InterestModel>> requestInterests();
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
      required int startDate,
      required int endDate,
      required double latitude,
      required double longitude,
      required double price,
      required double priceWithoutDiscount,
      required String eventType});
  // PUT /api/v1/events
  Future<EventModel> updateEventModel(
      {required String id,
      required String name,
      required String description,
      required String image,
      required String placeName,
      required String completeAddress,
      required int startDate,
      required int endDate,
      required double latitude,
      required double longitude,
      required double price,
      required double priceWithoutDiscount,
      required EventType eventType});
  // PUT /api/v1/events
  Future<bool> deleteEventModel({required String id});
  // PUT /api/v1/highlighted-images
  Future<HighlightModel> createHighlightedImagesModel(
      {required String eventId, required String image});
  // DELETE /api/v1/highlighted-images
  Future<bool> deleteHighlightedImagesModel(
      {required String eventId, required String highlightId});
  // PUT /api/v1/organizers
  Future<EventModel> updateOrganizersMembers(
      {required String eventId, required String username});
  // PUT /api/v1/participants
  Future<EventModel> updateParticipants({required String eventId});
  // PUT /api/v1/reports
  Future<EventModel> updateReports({required String eventId});

  // CommunityModel
  // GET /api/v1/communities
  Future<List<CommunityModel>> requestCommunitiesModel();
  // POST /api/v1/communities
  Future<CommunityModel> createCommunityModel(
      {required String image,
      required String name,
      required String city,
      required String description,
      required String categoryId});
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
  // GET /api/v1/categories
  Future<List<CategoryModel>> requestCategories();

  // CommentModel
  // POST /api/v1/comments
  Future<CommentModel> createCommentModel(
      {required String eventId, required String comment});
  // PUT /api/v1/comments
  Future<CommentModel> updateCommentModel({required String id});
  // PUT /api/v1/comment-reports
  Future<CommentModel> updateCommentReports({required String commentId});

  // CommentRepliesModel
  // POST /api/v1/comment-replies
  Future<CommentReplyModel> createCommentReplyModel(
      {required String commentId, required String commentReply});
  // PUT /api/v1/comment-replies
  Future<CommentReplyModel> updateCommentReplyModel({required String id});
  // PUT /api/v1/comment-replies-reports
  Future<CommentReplyModel> updateCommentRepliesReports(
      {required String commentReplyId});

  // TicketModel
  // GET /api/v1/tickets
  Future<List<TicketModel>> requestTickets();
  // POST /api/v1/tickets
  Future<TicketModel> createTicket(
      {required String eventId, required String qrCode});
  // PUT /api/v1/tickets
  Future<TicketModel> updateTicket({required String id});

  // ConversationModel
  // GET /api/v1/conversations
  Future<List<ConversationModel>> requestConversations();
  // POST /api/v1/conversations
  Future<ConversationModel> createConversation({required String userBId});
  // POST /api/v1/messages
  Future<MessageModel> createMessage(
      {required String conversationId,
      required String receiverId,
      required String message});

  // CommunityChat
}
