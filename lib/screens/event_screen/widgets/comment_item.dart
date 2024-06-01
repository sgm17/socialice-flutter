import 'package:socialice/dialogs/report_dialog/report_dialog.dart';
import 'package:socialice/domains/event_repository/src/models/comment_model.dart';
import 'package:socialice/providers/app_user_provider/app_user_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:socialice/providers/event_provider/events_provider.dart';
import 'package:socialice/utils/date_parser.dart';
import 'package:flutter/material.dart';

class CommentItem extends ConsumerWidget {
  const CommentItem({
    super.key,
    required this.comment,
  });

  final CommentModel comment;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appUser = ref.watch(appUserProvider).asData!.value;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 28,
              height: 28,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                image: comment.creator.profileImage != null
                    ? DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          comment.creator.profileImage!,
                        ),
                      )
                    : DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          "assets/images/default_avatar.png",
                        ),
                      ),
              ),
            ),
            SizedBox(
              width: 24,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      text: comment.creator.name,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Color(0xFF000000),
                      ),
                      children: [
                        TextSpan(
                          text: ' · ',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              height: 1.3,
                              color: Color(0xFFC1C1CB)),
                        ),
                        TextSpan(
                          text: formatDayWordMonthTimeCommasTime(
                              comment.createdAt),
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            height: 1.3,
                            color: Color(0xFFC1C1CB),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    comment.comment,
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Color(0xFF000000),
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () async => await ref
                                .read(eventsProvider.notifier)
                                .handleCommentFavourite(
                                    eventId: comment.eventId,
                                    commentId: comment.id),
                            child: comment.likes.contains(appUser.id)
                                ? Icon(
                                    Icons.favorite,
                                    size: 23,
                                  )
                                : Icon(
                                    Icons.favorite_outline,
                                    size: 23,
                                  ),
                          ),
                          SizedBox(
                            width: 6,
                          ),
                          Container(
                            child: Text(
                              '${comment.likes.length} Likes',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: Color(0xFF000000),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      GestureDetector(
                        onTap: () async {
                          final commentReply = await Navigator.pushNamed(
                              context, "/AddCommentScreen") as String?;

                          if (commentReply != null && commentReply.isNotEmpty) {
                            await ref
                                .read(eventsProvider.notifier)
                                .handleCreateCommentReply(
                                    eventId: comment.eventId,
                                    commentId: comment.id,
                                    comment: commentReply);
                          }
                        },
                        child: Icon(
                          Icons.reply,
                          size: 23,
                        ),
                      ),
                      if (!comment.reports.contains(appUser.id))
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: GestureDetector(
                            onTap: () => showDialog(
                              context: context,
                              builder: (context) {
                                return ReportDialog();
                              },
                            ).then((value) async {
                              if (value is bool && value) {
                                await ref
                                    .read(eventsProvider.notifier)
                                    .handleReportComment(
                                        eventId: comment.eventId,
                                        commentId: comment.id);
                              }
                            }),
                            child: Icon(
                              Icons.more_horiz,
                              size: 23,
                            ),
                          ),
                        ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        if (comment.replies!.isNotEmpty)
          SizedBox(
            height: 20,
          ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            for (int j = 0; j < comment.replies!.length; j++)
              Padding(
                padding: EdgeInsets.only(top: j != 0 ? 16.0 : 0.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 50,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(14),
                                image: comment
                                            .replies![j].creator.profileImage !=
                                        null
                                    ? DecorationImage(
                                        fit: BoxFit.cover,
                                        image: NetworkImage(comment
                                            .replies![j].creator.profileImage!),
                                      )
                                    : DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            "assets/images/default_avatar.png"))),
                            child: Container(
                              width: 28,
                              height: 28,
                            ),
                          ),
                          SizedBox(
                            width: 24,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RichText(
                                  text: TextSpan(
                                    text: comment.replies![j].creator.name,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      color: Color(0xFF000000),
                                    ),
                                    children: [
                                      TextSpan(
                                        text: ' · ',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14,
                                            height: 1.3,
                                            color: Color(0xFFC1C1CB)),
                                      ),
                                      TextSpan(
                                        text: formatDayWordMonthTimeCommasTime(
                                            comment.replies![j].createdAt),
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14,
                                          height: 1.3,
                                          color: Color(0xFFC1C1CB),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 6,
                                ),
                                Text(
                                  comment.replies![j].commentReply,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: Color(0xFF000000),
                                  ),
                                ),
                                SizedBox(
                                  height: 6,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        GestureDetector(
                                          onTap: () async => await ref
                                              .read(eventsProvider.notifier)
                                              .handleCommentReplyFavourite(
                                                eventId: comment.eventId,
                                                commentId: comment.id,
                                                commentReplyId:
                                                    comment.replies![j].id,
                                              ),
                                          child: comment.replies![j].likes
                                                  .contains(appUser.id)
                                              ? Icon(
                                                  Icons.favorite,
                                                  size: 23,
                                                )
                                              : Icon(
                                                  Icons.favorite_outline,
                                                  size: 23,
                                                ),
                                        ),
                                        SizedBox(
                                          width: 6,
                                        ),
                                        Container(
                                          child: Text(
                                            '${comment.replies![j].likes.length} Likes',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 12,
                                              color: Color(0xFF000000),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    if (!comment.replies![j].reports
                                        .contains(appUser.id))
                                      Padding(
                                        padding: EdgeInsets.only(left: 20),
                                        child: GestureDetector(
                                          onTap: () {
                                            showDialog(
                                                    context: context,
                                                    builder: (context) =>
                                                        ReportDialog())
                                                .then((value) async {
                                              if (value is bool && value) {
                                                await ref
                                                    .read(
                                                        eventsProvider.notifier)
                                                    .handleReportCommentReply(
                                                        eventId:
                                                            comment.eventId,
                                                        commentId: comment.id,
                                                        commentReplyId: comment
                                                            .replies![j].id);
                                              }
                                            });
                                          },
                                          child: Icon(
                                            Icons.more_horiz,
                                            size: 23,
                                          ),
                                        ),
                                      ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ],
    );
  }
}
