import 'package:flutter/widgets.dart';
import 'package:socialice/app_colors.dart';
import 'package:socialice/awidgets/event_assistants_profile.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EventHeadline extends StatelessWidget {
  const EventHeadline({
    super.key,
    required this.action,
  });

  final Function action;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => action(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 203,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  'assets/images/all_events_popular_image_2.png',
                ),
              ),
            ),
            child: Container(
                padding: EdgeInsets.fromLTRB(8, 16, 8, 0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: EventAssistantsProfile(assistants: [
                        'all_events_profile_image_1.png',
                        'all_events_profile_image_2.png',
                        'all_events_profile_image_3.png',
                        'all_events_profile_image_3.png',
                      ]),
                    ),
                    Container(
                        width: 26,
                        height: 26,
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(13),
                            color: AppColors.whiteColor),
                        alignment: Alignment.center,
                        child: SvgPicture.asset(
                          'assets/vectors/favorite_icon_x2.svg',
                          color: Color.fromRGBO(255, 83, 83, 1),
                        ))
                  ],
                )),
          ),
          SizedBox(
            height: 16.0,
          ),
          Text(
            'Morning coffee & make new friends: ViCAFE...',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: AppColors.blackColor,
            ),
          ),
          SizedBox(
            height: 4.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 26,
                    height: 26,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          'assets/images/event_group_picture.png',
                        ),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x40000000),
                          offset: Offset(0, 4),
                          blurRadius: 2,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 4.0,
                  ),
                  Text(
                    'Social7Club',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: AppColors.blackColor,
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 7.5, 0, 6.5),
                child: Text(
                  'May 29 2024',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 10,
                    color: AppColors.greyDarkColor,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
