import 'package:flutter/material.dart';

class MessageDialog extends StatelessWidget {
  const MessageDialog(
      {Key? key, required this.message, required this.buttonText})
      : super(key: key);

  final String message;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    void handleRetry() {
      Navigator.pop(context);
    }

    return Center(
      child: SingleChildScrollView(
        child: SizedBox(
            height: 146,
            child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 53),
                child: Material(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(10),
                          child: Text(
                            message,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: handleRetry,
                        child: Container(
                          alignment: Alignment.center,
                          height: 36.0,
                          decoration: const BoxDecoration(
                              border: Border(
                                  top: BorderSide(
                                      color: Color(0xFF939393), width: 0.5))),
                          child: Text(
                            buttonText,
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Color(0xFF3F8DFD),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ))),
      ),
    );
  }
}
