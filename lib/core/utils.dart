import 'dart:ui';

import 'package:flutter/Material.dart';

double setHeaderSize(context) {
  double unitHeightValue = MediaQuery.of(context).size.height * 0.01;
  double customSize = 4.5;
  return customSize * unitHeightValue;
}

double setSubHeadingSize(context) {
  double unitHeightValue = MediaQuery.of(context).size.height * 0.01;
  double customSize = 2;
  return customSize * unitHeightValue;
}

TextStyle headerStyle(context) {
  return TextStyle(
      color: Color.fromRGBO(12, 172, 101, 1), fontSize: setHeaderSize(context));
}

TextStyle subHeadingStyle(context) {
  return TextStyle(
      color: Color.fromRGBO(12, 172, 101, 1),
      fontSize: setSubHeadingSize(context));
}
