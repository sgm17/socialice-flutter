import 'package:flutter/material.dart';

class SelectDialog extends StatelessWidget {
  const SelectDialog({Key? key}) : super(key: key);

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
                        alignment: Alignment.center,
                        child: Text(
                          'Are you sure that you wan’t to delete the flat?',
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
                          onTap: toggleCancel,
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
                              'Cancel',
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
                          onTap: toggleDelete,
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
                              'Delete',
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

  void toggleCancel() {}

  void toggleDelete() {}
}
