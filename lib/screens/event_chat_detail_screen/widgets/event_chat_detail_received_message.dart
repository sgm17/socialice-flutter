import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:socialice/domains/app_user_repository/src/models/app_user_model.dart';

class EventChatDetailReceivedMessage extends StatelessWidget {
  const EventChatDetailReceivedMessage({
    super.key,
    required this.otherUser,
    required this.message,
  });

  final AppUserModel otherUser;
  final String message;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, "/UserProfileScreen",
                arguments: {"userId": otherUser.id});
          },
          child: Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(17.5),
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
        ),
        SizedBox(
          width: 6,
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(10),
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    color: Color(0xFFE5E5E5),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                    ),
                  ),
                  child: Text(
                    message,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Color(0xFF000000),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: (MediaQuery.of(context).size.width - 128) / 3,
              )
            ],
          ),
        ),
      ],
    );
  }
}
