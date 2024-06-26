import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:socialice/domains/event_repository/src/models/comment_reply_model.dart';
import 'package:socialice/domains/event_repository/src/models/event_model.dart';
import 'package:socialice/providers/app_user_provider/app_user_provider.dart';
import 'package:socialice/providers/event_provider/event_viewmodel_provider.dart';
import 'package:socialice/providers/http_provider/http_viewmodel_provider.dart';

class EventsNotifier extends StateNotifier<AsyncValue<List<EventModel>>> {
  final Ref ref;

  EventsNotifier(
    this.ref,
  ) : super(const AsyncValue<List<EventModel>>.loading()) {
    initialize();
  }

  Future<void> initialize() async {
    try {
      final events = await ref.read(eventViewmodelProvider).getEvents();
      state = AsyncValue.data(events);
    } catch (e) {
      print(e);
      state = AsyncValue.error(e, StackTrace.current);
    }
  }

  Future<EventModel?> createEvent(
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
      required double? price,
      required double? priceWithoutDiscount,
      required String eventType}) async {
    try {
      final events = state.asData!.value;
      final event = await ref.read(httpViewmodelProvider).createEventModel(
          name: name,
          description: description,
          image: image,
          placeName: placeName,
          completeAddress: completeAddress,
          communityId: communityId,
          startDate: startDate,
          endDate: endDate,
          latitude: latitude,
          longitude: longitude,
          price: price,
          priceWithoutDiscount: priceWithoutDiscount,
          eventType: eventType);
      state = AsyncValue.data([event, ...events]);
      return event;
    } catch (e) {
      print(e);
      state = AsyncValue.error(e, StackTrace.current);
    }
    return null;
  }

  Future<bool> handleCommentFavourite(
      {required String eventId, required String commentId}) async {
    try {
      final events = state.asData!.value;
      final user = ref.read(appUserProvider).asData!.value;

      final event = events.where((e) => e.id == eventId).firstOrNull;
      if (event == null) return false;

      final comment =
          event.comments?.where((c) => c.id == commentId).firstOrNull;
      if (comment == null) return false;

      final isLiked = comment.likes.contains(user.id);
      final updatedLikes = isLiked
          ? comment.likes.where((id) => id != user.id).toList()
          : [user.id, ...comment.likes];

      final updatedComment = comment.copyWith(likes: updatedLikes);
      final updatedComments = event.comments!
          .map((c) => c.id == commentId ? updatedComment : c)
          .toList();
      final updatedEvent = event.copyWith(comments: updatedComments);

      state = AsyncValue.data(
          events.map((e) => e.id == eventId ? updatedEvent : e).toList());

      return true;
    } catch (e) {
      print(e);
      state = AsyncValue.error(e, StackTrace.current);
      return false;
    }
  }

  Future<bool> handleCommentReplyFavourite(
      {required String eventId,
      required String commentId,
      required String commentReplyId}) async {
    try {
      final events = state.asData!.value;
      final user = ref.read(appUserProvider).asData!.value;
      final event = events.where((e) => e.id == eventId).firstOrNull;
      if (event == null) return false;

      final comment =
          event.comments?.where((e) => e.id == commentId).firstOrNull;
      if (comment == null) return false;

      final commentReply =
          comment.replies?.where((e) => e.id == commentReplyId).firstOrNull;
      if (commentReply == null) return false;

      final CommentReplyModel updatedCommentReply =
          commentReply.likes.contains(user.id)
              ? commentReply.copyWith(
                  likes: commentReply.likes.where((e) => e != user.id).toList())
              : commentReply.copyWith(likes: [user.id, ...commentReply.likes]);

      final updatedCommentReplies = comment.replies
          ?.map((e) => e.id == commentReplyId ? updatedCommentReply : e)
          .toList();

      final updatedComment = comment.copyWith(replies: updatedCommentReplies);

      final updatedComments = event.comments
          ?.map((e) => e.id == commentId ? updatedComment : e)
          .toList();

      final updatedEvent = event.copyWith(comments: updatedComments);

      final updatedEvents =
          events.map((e) => e.id == eventId ? updatedEvent : e).toList();

      state = AsyncValue.data(updatedEvents);

      await ref
          .read(httpViewmodelProvider)
          .updateCommentReplyModel(id: commentReplyId);
      return true;
    } catch (e) {
      print(e);
      state = AsyncValue.error(e, StackTrace.current);
      return false;
    }
  }

  Future<bool> handleCreateComment(
      {required String eventId, required String comment}) async {
    try {
      final events = state.asData!.value;
      final event = events.where((e) => e.id == eventId).firstOrNull;
      if (event == null) return false;

      final createdComment = await ref
          .read(httpViewmodelProvider)
          .createCommentModel(eventId: eventId, comment: comment);
      final newEvent =
          event.copyWith(comments: [createdComment, ...event.comments!]);

      state = AsyncValue.data(
          events.map((e) => e.id == eventId ? newEvent : e).toList());
      return true;
    } catch (e) {
      print(e);
      state = AsyncValue.error(e, StackTrace.current);
      return false;
    }
  }

  Future<bool> handleCreateCommentReply(
      {required String eventId,
      required String commentId,
      required String comment}) async {
    try {
      final events = state.asData!.value;

      final event = events.where((e) => e.id == eventId).firstOrNull;
      if (event == null) return false;

      final createdCommentReply = await ref
          .read(httpViewmodelProvider)
          .createCommentReplyModel(commentId: commentId, commentReply: comment);

      final commentToUpdate =
          event.comments?.where((e) => e.id == commentId).firstOrNull;
      if (commentToUpdate == null) return false;

      final updatedComment = commentToUpdate.copyWith(
        replies: [createdCommentReply, ...?commentToUpdate.replies],
      );

      final updatedComments = event.comments!.map((e) {
        return e.id == updatedComment.id ? updatedComment : e;
      }).toList();

      final updatedEvents = events.map((e) {
        return e.id == event.id ? e.copyWith(comments: updatedComments) : e;
      }).toList();

      state = AsyncValue.data(updatedEvents);
      return true;
    } catch (e) {
      print(e);
      state = AsyncValue.error(e, StackTrace.current);
      return false;
    }
  }

  Future<bool> handleReportComment(
      {required String eventId, required String commentId}) async {
    try {
      final events = state.asData!.value;
      final event = events.where((e) => e.id == eventId).firstOrNull;
      if (event == null) return false;

      final user = ref.read(appUserProvider).asData!.value;

      final comment =
          event.comments?.where((e) => e.id == commentId).firstOrNull;

      if (comment == null) return false;

      final updatedComment =
          comment.copyWith(reports: [user.id, ...comment.reports]);

      final updatedComments = event.comments!
          .map((c) => c.id == commentId ? updatedComment : c)
          .toList();

      final updatedEvents = events
          .map((e) =>
              e.id == eventId ? e.copyWith(comments: updatedComments) : e)
          .toList();

      state = AsyncValue.data(updatedEvents);

      await ref
          .read(httpViewmodelProvider)
          .updateCommentReports(commentId: commentId);
      return true;
    } catch (e) {
      print(e);
      state = AsyncValue.error(e, StackTrace.current);
      return false;
    }
  }

  Future<bool> handleReportCommentReply(
      {required String eventId,
      required String commentId,
      required String commentReplyId}) async {
    try {
      final events = state.asData!.value;
      final event = events.where((e) => e.id == eventId).firstOrNull;
      if (event == null) return false;

      final user = ref.read(appUserProvider).asData!.value;

      final comment =
          event.comments?.where((e) => e.id == commentId).firstOrNull;

      if (comment == null) return false;

      final commentReply =
          comment.replies?.where((e) => e.id == commentReplyId).firstOrNull;

      if (commentReply == null) return false;

      final updatedCommentReply =
          commentReply.copyWith(reports: [user.id, ...commentReply.reports]);

      final updatedCommentReplies = comment.replies!
          .map((e) => e.id == commentReplyId ? updatedCommentReply : e)
          .toList();

      final updatedComment = comment.copyWith(replies: updatedCommentReplies);

      final updatedComments = event.comments!
          .map((c) => c.id == commentId ? updatedComment : c)
          .toList();

      final updatedEvents = events
          .map((e) =>
              e.id == eventId ? e.copyWith(comments: updatedComments) : e)
          .toList();

      state = AsyncValue.data(updatedEvents);

      await ref
          .read(httpViewmodelProvider)
          .updateCommentRepliesReports(commentReplyId: commentReplyId);
      return true;
    } catch (e) {
      print(e);
      state = AsyncValue.error(e, StackTrace.current);
      return false;
    }
  }

  Future<bool> handleReportEvent({required String eventId}) async {
    try {
      final events = state.asData!.value;
      final user = ref.read(appUserProvider).asData!.value;
      final event = events.where((e) => e.id == eventId).firstOrNull;
      if (event == null) return false;
      final newEvent = event.copyWith(reports: [user.id, ...event.reports]);

      state = AsyncValue.data(
          events.map((e) => e.id == eventId ? newEvent : e).toList());

      await ref.read(httpViewmodelProvider).updateReports(eventId: eventId);
      return true;
    } catch (e) {
      print(e);
      state = AsyncValue.error(e, StackTrace.current);
      return false;
    }
  }

  Future<void> deleteEvent({required String id}) async {
    try {
      final events = state.asData!.value;

      await ref.read(httpViewmodelProvider).deleteEventModel(id: id);
      state = AsyncValue.data(events.where((e) => e.id != id).toList());
    } catch (e) {
      print(e);
      state = AsyncValue.error(e, StackTrace.current);
    }
  }

  Future<void> handleCreatePhoto(
      {required String eventId, required String imageUrl}) async {
    try {
      final events = state.asData!.value;
      final event = events.where((e) => e.id == eventId).firstOrNull;

      if (event != null) {
        final highlight = await ref
            .read(httpViewmodelProvider)
            .createHighlightedImagesModel(eventId: eventId, image: imageUrl);
        final updatedEvent =
            event.copyWith(highlights: [highlight, ...event.highlights!]);
        state = AsyncValue.data(
            events.map((e) => e.id == eventId ? updatedEvent : e).toList());
      }
    } catch (e) {
      print(e);
      state = AsyncValue.error(e, StackTrace.current);
    }
  }

  Future<void> handleDeletePhoto(
      {required String eventId, required String highlightId}) async {
    try {
      final events = state.asData!.value;
      final event = events.where((e) => e.id == eventId).firstOrNull;

      if (event != null) {
        await ref.read(httpViewmodelProvider).deleteHighlightedImagesModel(
            eventId: eventId, highlightId: highlightId);
        final updatedEvent = event.copyWith(
            highlights:
                event.highlights!.where((e) => e.id != highlightId).toList());
        state = AsyncValue.data(
            events.map((e) => e.id == eventId ? updatedEvent : e).toList());
      }
    } catch (e) {
      print(e);
      state = AsyncValue.error(e, StackTrace.current);
    }
  }

  Future<bool> updateOrganizers(
      {required String eventId, required String username}) async {
    try {
      final events = state.asData!.value;
      final event = await ref
          .read(httpViewmodelProvider)
          .updateOrganizersMembers(eventId: eventId, username: username);
      state = AsyncValue.data(
          events.map((e) => e.id == eventId ? event : e).toList());
      return true;
    } catch (e) {
      print(e);
      state = AsyncValue.error(e, StackTrace.current);
      return false;
    }
  }

  Future<bool> joinEvent({required String eventId}) async {
    try {
      final events = state.asData!.value;
      final event = events.where((e) => e.id == eventId).firstOrNull;
      final appUser = ref.read(appUserProvider).value!;

      if (event == null) return false;

      EventModel updatedEvent;

      final isParticipant =
          event.participants!.map((e) => e.id).contains(appUser.id);

      if (isParticipant) {
        updatedEvent = event.copyWith(
            participants:
                event.participants!.where((e) => e.id != appUser.id).toList());
      } else {
        updatedEvent =
            event.copyWith(participants: [appUser, ...event.participants!]);
      }

      ref.read(appUserProvider.notifier).joinEvent(eventId: eventId);

      state = AsyncValue.data(
          events.map((e) => e.id == eventId ? updatedEvent : e).toList());

      await ref
          .read(httpViewmodelProvider)
          .updateParticipants(eventId: eventId);
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }
}
