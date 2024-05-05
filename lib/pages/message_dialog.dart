import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:socialice/utils.dart';

class MessageDialog extends StatelessWidget {
  const MessageDialog({Key? key, required this.appError}) : super(key: key);

  final String appError;

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
                            appError,
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
                            'Retry',
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
