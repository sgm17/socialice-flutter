import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:socialice/constants/app_colors.dart';
import 'package:socialice/providers/app_user_provider/app_user_provider.dart';
import 'package:socialice/screens/add_comment_screen/widgets/input_comment_value.dart';
import 'package:socialice/widgets/arrow_back.dart';
import 'package:socialice/widgets/black_container_button.dart';

class AddCommentScreen extends ConsumerStatefulWidget {
  const AddCommentScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<AddCommentScreen> createState() => _AddCommentScreenState();
}

class _AddCommentScreenState extends ConsumerState<AddCommentScreen> {
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final appUser = ref.watch(appUserProvider).asData!.value;

    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ArrowBack(),
              SizedBox(
                height: 16.0,
              ),
              Container(
                child: Text(
                  'Add a comment',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                    color: AppColors.blackColor,
                  ),
                ),
              ),
              SizedBox(
                height: 32.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 24, 0),
                    width: 28,
                    height: 28,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        image: appUser.profileImage == null
                            ? DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    "assets/images/default_avatar.png"))
                            : DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                  appUser.profileImage!,
                                ),
                              ),
                      ),
                      child: Container(
                        width: 28,
                        height: 28,
                      ),
                    ),
                  ),
                  Text(
                    "${appUser.name} ${appUser.surname}",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: AppColors.blackColor,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 32.0,
              ),
              InputCommentValue(
                placeholder: 'Add a comment',
                controller: controller,
              ),
              SizedBox(
                height: 32.0,
              ),
              BlackContainerButton(
                  text: 'Publish',
                  action: () => Navigator.of(context).pop(controller.text))
            ],
          ),
        ),
      ),
    );
  }
}
