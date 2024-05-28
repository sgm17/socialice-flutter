import 'package:flutter_riverpod/flutter_riverpod.dart';
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
      state = AsyncValue.error(e, StackTrace.current);
    }
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
      state = AsyncValue.error(e, StackTrace.current);
      return false;
    }
  }

  Future<bool> handleCommentReplyFavourite() async {
    return false;
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
      state = AsyncValue.error(e, StackTrace.current);
      return false;
    }
  }

  Future<bool> handleCreateCommentReply(
      {required String eventId,
      required String parentCommentId,
      required String comment}) async {
    try {
      final events = state.asData!.value;

      final event = events.where((e) => e.id == eventId).firstOrNull;
      if (event == null) return false;

      final createdCommentReply = await ref
          .read(httpViewmodelProvider)
          .createCommentReplyModel(
              parentCommentId: parentCommentId, comment: comment);

      final commentToUpdate =
          event.comments?.where((e) => e.id == parentCommentId).firstOrNull;
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
      state = AsyncValue.error(e, StackTrace.current);
      return false;
    }
  }
}
