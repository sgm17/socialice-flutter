import 'package:flutter/material.dart';
import 'package:socialice/widgets/arrow_back.dart';
import 'package:socialice/widgets/black_container_button.dart';

class ConfirmationScreen extends StatelessWidget {
  const ConfirmationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(alignment: Alignment.centerLeft, child: ArrowBack()),
              SizedBox(
                height: 64,
              ),
              Text(
                'We wait for you there!',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 24,
                  color: Color(0xFF1B1A1D),
                ),
              ),
              SizedBox(
                height: 14.0,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 8),
                    child: Text(
                      'Board Games Together (Alehouse - Palmhof)',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                        color: Color(0xFF000000),
                      ),
                    ),
                  ),
                  Text(
                    'hoy, 06:30 p. m.',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      color: Color(0xFFC1C1CB),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 32,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  BlackContainerButton(
                    text: 'Show the ticket',
                    action: () =>
                        Navigator.pushNamed(context, '/TicketDetailScreen'),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  BlackContainerButton(
                    text: 'Add to the calendar',
                    action: () => throw UnimplementedError(),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    height: 48,
                    alignment: Alignment.center,
                    color: Colors.transparent,
                    child: Text(
                      'Send to a friend',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Color(0xFF3F8DFD),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
