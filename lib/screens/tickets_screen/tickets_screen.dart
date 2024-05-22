import 'package:flutter/material.dart';
import 'package:socialice/screens/tickets_screen/widgets/no_tickets_available.dart';
import 'package:socialice/screens/tickets_screen/widgets/tickets_available.dart';

class TicketsScreen extends StatelessWidget {
  const TicketsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
              SizedBox(
                height: 26,
                child: Text(
                  '1 Ticket In The Wallet',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 22,
                    color: Color(0xFFC1C1CB),
                  ),
                ),
              ),
              SizedBox(
                height: 32,
              ),
              GestureDetector(
                  onTap: () =>
                      Navigator.pushNamed(context, '/TicketDetailScreen'),
                  child: TicketAvailable()),
              SizedBox(
                height: 32,
              ),
              NoTicketsAvailable(),
            ],
          ),
        ),
      ),
    );
  }
}
