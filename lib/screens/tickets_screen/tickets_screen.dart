import 'package:socialice/screens/tickets_screen/widgets/no_tickets_available.dart';
import 'package:socialice/screens/tickets_screen/widgets/tickets_available.dart';
import 'package:socialice/providers/tickets_provider/tickets_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:socialice/constants/app_colors.dart';
import 'package:socialice/widgets/skelton.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

class TicketsScreen extends ConsumerWidget {
  const TicketsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tickets = ref.watch(ticketsProvider);

    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
              child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            height: 32,
          ),
          Text(
            'My Tickets',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 28,
              color: Color(0xFF1B1A1D),
            ),
          ),
          tickets.when(
            data: (tickets) => SizedBox(
              height: 26,
              child: Text(
                '${tickets.length} Tickets In The Wallet',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 22,
                  color: Color(0xFFC1C1CB),
                ),
              ),
            ),
            loading: () =>
                Skelton(height: 26, borderRadius: 6, isProfileImage: false),
            error: (error, stackTrace) => SizedBox.shrink(),
          ),
          SizedBox(
            height: 32,
          ),
          tickets.when(
            data: (tickets) {
              if (tickets.isEmpty)
                return GestureDetector(
                    onTap: () =>
                        Navigator.pushNamed(context, "/AllEventsScreen"),
                    child: NoTicketsAvailable());
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  for (int i = 0; i < tickets.length; i++)
                    Padding(
                      padding: const EdgeInsets.only(bottom: 30.0),
                      child: GestureDetector(
                          onTap: () => Navigator.pushNamed(
                              context, '/TicketDetailScreen'),
                          child: TicketAvailable()),
                    )
                ],
              );
            },
            loading: () => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SvgPicture.asset('assets/vectors/ticket_1_group_x2.svg',
                    height: 221, color: AppColors.blackColor.withOpacity(0.04)),
                SizedBox(
                  height: 30,
                ),
                SvgPicture.asset('assets/vectors/ticket_1_group_x2.svg',
                    height: 221, color: AppColors.blackColor.withOpacity(0.04))
              ],
            ),
            error: (error, stackTrace) => SizedBox.shrink(),
          )
        ]),
      ))),
    );
  }
}
