import 'dart:ui';

import 'package:flutter/Material.dart';

double setHeaderSize(context) {
  double unitHeightValue = MediaQuery.of(context).size.height * 0.01;
  double customSize = 4.5;
  return customSize * unitHeightValue;
}

double setSubHeadingSize(context) {
  double unitHeightValue = MediaQuery.of(context).size.height * 0.01;
  double customSize = 2.2;
  return customSize * unitHeightValue;
}

double setBigInfoSize(context) {
  double unitHeightValue = MediaQuery.of(context).size.height * 0.01;
  double customSize = 2.5;
  return customSize * unitHeightValue;
}

TextStyle headerStyle(context) {
  return TextStyle(
      color: Color.fromRGBO(12, 172, 101, 1),
      fontSize: setHeaderSize(context),
      fontWeight: FontWeight.w600);
}

TextStyle subHeadingStyle(context) {
  return TextStyle(
      color: Colors.black54,
      fontSize: setSubHeadingSize(context),
      fontWeight: FontWeight.w800);
}

TextStyle bigInfoTextStyle(context) {
  return TextStyle(
      color: Colors.black87,
      fontSize: setBigInfoSize(context),
      fontWeight: FontWeight.w800);
}

// FORM STYLES

// size 4
double formLabelSize(context) {
  double unitHeightValue = MediaQuery.of(context).size.height * 0.01;
  double customSize = 4;
  return customSize * unitHeightValue;
}

double formTextSize(context) {
  double unitHeightValue = MediaQuery.of(context).size.height * 0.01;
  double customSize = 3;
  return customSize * unitHeightValue;
}

TextStyle formLabelStyle(context) {
  return TextStyle(
      color: Color.fromRGBO(12, 172, 101, 1),
      fontSize: formLabelSize(context),
      fontWeight: FontWeight.w600);
}

TextStyle formText(context) {
  return TextStyle(
      color: Colors.black87,
      fontSize: formTextSize(context),
      fontWeight: FontWeight.w600);
}

// form decoration

InputDecoration formDecoration(
    BuildContext context, String hintText, String labelText) {
  return InputDecoration(
      hintStyle: TextStyle(
        height: 2.0, // sets the distance between label and input
      ),
      hintText: '',
      labelText: labelText,
      contentPadding: EdgeInsets.symmetric(
          vertical: 10), //Change this value to custom as you like
      isDense: true,
      labelStyle: formLabelStyle(context),
      focusedBorder: InputBorder.none,
      enabledBorder: InputBorder.none,
      errorBorder: InputBorder.none,
      disabledBorder: InputBorder.none,
      border: InputBorder.none);
}
