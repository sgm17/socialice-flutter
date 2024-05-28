import 'package:flutter/material.dart';

class SelectDialog extends StatelessWidget {
  const SelectDialog({
    Key? key,
    required this.message,
    this.blueButtonText = 'Cancel',
    this.redButtonText = 'Delete',
  }) : super(key: key);

  final String message;
  final String blueButtonText, redButtonText;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: SizedBox(
          height: 146,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 53.0),
            child: Material(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xFFDDDDDD),
              child: SizedBox(
                height: 146,
                child: Column(
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        alignment: Alignment.center,
                        child: Text(
                          message,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: Color(0xFF000000),
                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Flexible(
                            child: GestureDetector(
                          onTap: () => Navigator.of(context).pop(false),
                          child: Container(
                            alignment: Alignment.center,
                            height: 36,
                            decoration: BoxDecoration(
                                border: Border(
                                    top: BorderSide(
                                        color: Color(0xFF939393), width: 0.5),
                                    right: BorderSide(
                                        color: Color(0xFF939393), width: 0.5))),
                            child: Text(
                              blueButtonText,
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Color(0xFF3F8DFD),
                              ),
                            ),
                          ),
                        )),
                        Flexible(
                            child: GestureDetector(
                          onTap: () => Navigator.of(context).pop(true),
                          child: Container(
                            alignment: Alignment.center,
                            height: 36,
                            decoration: BoxDecoration(
                                border: Border(
                                    top: BorderSide(
                                        color: Color(0xFF939393), width: 0.5),
                                    right: BorderSide(
                                        color: Color(0xFF939393), width: 0.5))),
                            child: Text(
                              redButtonText,
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Color(0xFFFF004D),
                              ),
                            ),
                          ),
                        )),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
