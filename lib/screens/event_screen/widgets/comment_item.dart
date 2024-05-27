import 'package:socialice/domains/event_repository/src/models/comment_model.dart';
import 'package:socialice/providers/app_user_provider/app_user_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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
                  SizedBox(
                    width: 135.2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () => _handleCommentFavourite(),
                              child: comment.replies!.contains(appUser.id)
                                  ? Icon(
                                      Icons.favorite,
                                      size: 20,
                                    )
                                  : Icon(
                                      Icons.favorite_outline,
                                      size: 20,
                                    ),
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            Container(
                              child: Text(
                                '${comment.likes!.length} Likes',
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  color: Color(0xFF000000),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Icon(
                          Icons.reply,
                          size: 20,
                        ),
                        Icon(
                          Icons.more_horiz,
                          size: 20,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
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
                                  comment.replies![j].comment,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: Color(0xFF000000),
                                  ),
                                ),
                                SizedBox(
                                  height: 6,
                                ),
                                SizedBox(
                                  width: 135.2,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          GestureDetector(
                                            onTap: () =>
                                                _handleReplyFavourite(),
                                            child: comment.likes!
                                                    .contains(appUser.id)
                                                ? Icon(
                                                    Icons.favorite,
                                                    size: 20,
                                                  )
                                                : Icon(
                                                    Icons.favorite_outline,
                                                    size: 20,
                                                  ),
                                          ),
                                          SizedBox(
                                            width: 6,
                                          ),
                                          Container(
                                            child: Text(
                                              '${comment.replies![j].likes!.length} Likes',
                                              style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 12,
                                                color: Color(0xFF000000),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Icon(
                                        Icons.reply,
                                        size: 20,
                                      ),
                                      Icon(
                                        Icons.more_horiz,
                                        size: 20,
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
              ),
          ],
        ),
      ],
    );
  }

  Future<void> _handleCommentFavourite() async {
    print("_handleCommentFavourite");
  }

  Future<void> _handleReplyFavourite() async {
    print("_handleReplyFavourite");
  }
}
