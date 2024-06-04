import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:socialice/providers/app_user_provider/app_user_provider.dart';
import 'package:socialice/providers/conversations_provider/conversations_provider.dart';
import 'package:socialice/screens/private_chat_screen/widgets/private_chat_received_message.dart';
import 'package:socialice/screens/private_chat_screen/widgets/private_chat_sent_message.dart';
import 'package:socialice/screens/private_chat_screen/widgets/private_chat_timestamp.dart';
import 'package:socialice/widgets/arrow_back.dart';
import 'package:socialice/screens/private_chat_screen/widgets/private_chat_bottom_bar.dart';

class PrivateChatScreen extends ConsumerWidget {
  const PrivateChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Map<String, dynamic> args =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    final conversationId = args["conversationId"];

    final user = ref.watch(appUserProvider).asData!.value;
    final conversations = ref.watch(conversationsProvider).asData!.value;
    final conversation =
        conversations.where((e) => e.id == conversationId).firstOrNull;

    if (conversation == null) return SizedBox.shrink();

    final otherUser =
        conversation.userA != user.id ? conversation.userB : conversation.userA;

    final messages = conversation.messages!.reversed.toList();

    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 32,
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ArrowBack(),
                      SizedBox(
                        width: 35,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, "/UserProfileScreen",
                              arguments: {"userId": otherUser.id});
                        },
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: otherUser.profileImage == null
                                    ? DecorationImage(
                                        image: AssetImage(
                                            "assets/images/default_avatar.png"))
                                    : DecorationImage(
                                        fit: BoxFit.cover,
                                        image: NetworkImage(
                                          otherUser.profileImage!,
                                        ),
                                      ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              otherUser.username,
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 18,
                                color: Color(0xFF000000),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView.separated(
              padding: EdgeInsets.fromLTRB(16, 32, 16, 32),
              reverse: true,
              itemCount: messages.length,
              itemBuilder: (context, index) {
                final children = <Widget>[];

                if (index == messages.length - 1 ||
                    messages[index].createdAt.day !=
                        messages[index + 1].createdAt.day) {
                  children.add(PrivateChatTimestamp(
                    createdAt: messages[index].createdAt,
                  ));
                  children.add(const SizedBox(height: 8.0));
                }

                children.add(messages[index].sender.id == user.id
                    ? PrivateChatSentMessage(message: messages[index].message)
                    : PrivateChatReceivedMessage(
                        otherUser: otherUser,
                        message: messages[index].message));

                return Column(
                  crossAxisAlignment: messages[index].sender.id == user.id
                      ? CrossAxisAlignment.end
                      : CrossAxisAlignment.start,
                  children: children,
                );
              },
              separatorBuilder: (context, index) {
                final currentUserId = messages[index].sender.id;
                final nextUserId = index < messages.length - 1
                    ? messages[index + 1].sender.id
                    : null;
                final isSameUser = currentUserId == nextUserId;

                return SizedBox(
                  height: isSameUser ? 8.0 : 16.0,
                );
              },
            ),
          ),
          PrivateChatBottomBar(
            conversationId: conversation.id,
          ),
        ],
      ),
    );
  }
}
