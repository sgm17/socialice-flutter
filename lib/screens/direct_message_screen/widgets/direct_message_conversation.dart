import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:socialice/domains/conversation_repository/src/models/conversation_model.dart';
import 'package:socialice/providers/app_user_provider/app_user_provider.dart';
import 'package:socialice/utils/date_parser.dart';

class DirectMessageConversation extends ConsumerWidget {
  const DirectMessageConversation({super.key, required this.conversation});

  final ConversationModel conversation;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(appUserProvider).asData!.value;
    final otherUser =
        conversation.userA != user.id ? conversation.userB : conversation.userA;

    return SizedBox(
      height: 70,
      child: Row(
        children: [
          SizedBox(
            width: 16,
          ),
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              image: otherUser.profileImage == null
                  ? DecorationImage(
                      image: AssetImage("assets/images/default_avatar.png"),
                      fit: BoxFit.cover)
                  : DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        otherUser.profileImage!,
                      ),
                    ),
            ),
          ),
          SizedBox(
            width: 12,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  otherUser.username,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                    color: Color(0xFF000000),
                  ),
                ),
                Text(
                  conversation.messages!.last.message,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                    color: Color(0xFFC1C1CB),
                  ),
                ),
                Text(
                  formatTimestamp(conversation.messages!.last.createdAt),
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Color(0xFFC1C1CB),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
