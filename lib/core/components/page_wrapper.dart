import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class PageWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Expanded(
              flex: 1,
              child: Container(
                color: Colors.blue,
              )),
          Expanded(
              flex: 1,
              child: Container(
                color: Colors.green,
              )),
          Expanded(
              flex: 1,
              child: Container(
                color: Colors.yellow,
              ))
        ],
      ),
    );
    ;
  }
}
