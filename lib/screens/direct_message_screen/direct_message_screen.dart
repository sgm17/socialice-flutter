import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:socialice/providers/conversations_provider/conversations_provider.dart';
import 'package:socialice/screens/direct_message_screen/widgets/direct_message_conversation.dart';
import 'package:socialice/widgets/skelton.dart';

class DirectMessageScreen extends ConsumerWidget {
  const DirectMessageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final conversationsState = ref.watch(conversationsProvider);

    return Scaffold(
      body: Column(
        children: [
          conversationsState.when(
            data: (conversations) => Expanded(
              child: ListView.separated(
                itemCount: conversations.length,
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () => Navigator.pushNamed(
                        context, '/PrivateChatScreen',
                        arguments: {"conversationId": conversations[index].id}),
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 12),
                      child: DirectMessageConversation(
                        conversation: conversations[index],
                      ),
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 1,
                    decoration: BoxDecoration(
                      color: Color(0xFF000000),
                    ),
                  );
                },
              ),
            ),
            loading: () {
              return Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    for (int i = 0; i < 5; i++)
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 2.0),
                        child: Skelton(
                            height: 71, borderRadius: 0, isProfileImage: false),
                      )
                  ],
                ),
              );
            },
            error: (error, stackTrace) => SizedBox.shrink(),
          ),
        ],
      ),
    );
  }
}
