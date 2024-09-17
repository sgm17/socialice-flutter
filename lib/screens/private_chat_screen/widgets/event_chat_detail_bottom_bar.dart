import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:socialice/constants/app_colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:socialice/providers/conversations_provider/conversations_provider.dart';

class PrivateChatBottomBar extends ConsumerStatefulWidget {
  const PrivateChatBottomBar({super.key, required this.conversationId});

  final String conversationId;

  @override
  ConsumerState<PrivateChatBottomBar> createState() =>
      _PrivateChatBottomBarState();
}

class _PrivateChatBottomBarState extends ConsumerState<PrivateChatBottomBar> {
  late TextEditingController controller;

  @override
  void initState() {
    controller = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _submitMessage() {
      if (controller.text.isNotEmpty) {
        ref.read(conversationsProvider.notifier).sendMessage(
            conversationId: widget.conversationId, message: controller.text);
        controller.clear();
      }
    }

    return Container(
      decoration: BoxDecoration(
          border: Border(
              top: BorderSide(color: AppColors.greyLightColor, width: 1))),
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: TextField(
                controller: controller,
                textInputAction: TextInputAction.send,
                maxLength: 100,
                textAlignVertical: TextAlignVertical.center,
                style: TextStyle(
                  color: AppColors.blackColor,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w400,
                ),
                onSubmitted: _submitMessage(),
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(10, 14, 0, 14),
                    counter: SizedBox.shrink(),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: AppColors.greyLightColor,
                          width: 1,
                        )),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: AppColors.greyLightColor, width: 1)),
                    isCollapsed: true,
                    hintText: 'Message...',
                    hintStyle: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400,
                      color: AppColors.blackColor,
                    ))),
          ),
          SizedBox(
            width: 6,
          ),
          GestureDetector(
            onTap: _submitMessage,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: SizedBox(
                  height: 40,
                  width: 40,
                  child: SvgPicture.asset('assets/vectors/send_icon.svg')),
            ),
          )
        ],
      ),
    );
  }
}
