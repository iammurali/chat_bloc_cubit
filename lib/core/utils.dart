import 'dart:ui';

import 'package:chat_app/core/app_theme.dart';
import 'package:flutter/Material.dart';

// TODO: Move To Theme Styles
// Text style
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
  return Theme.of(context).textTheme.headline5.copyWith(
      color: Theme.of(context).primaryColor, fontWeight: FontWeight.w800);
}

TextStyle subHeadingStyle(context) {
  return Theme.of(context).textTheme.subtitle2;
}

TextStyle bigInfoTextStyle(context) {
  return TextStyle(
      color: Theme.of(context).secondaryHeaderColor,
      fontSize: setBigInfoSize(context),
      fontWeight: FontWeight.w800);
}

// FORM STYLES
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
      color: AppTheme.primary,
      fontSize: formLabelSize(context),
      fontWeight: FontWeight.w600);
}

TextStyle formText(context) {
  return TextStyle(
      color: Colors.white,
      fontSize: formTextSize(context),
      fontWeight: FontWeight.w600);
}

// form decoration
InputDecoration formDecoration(
    BuildContext context, String hintText, String labelText) {
  return InputDecoration(
      hintStyle: TextStyle(
        color: Colors.white70,
        height: 2.0, // sets the distance between label and input
      ),
      hintText: hintText,
      labelText: labelText,
      contentPadding: EdgeInsets.symmetric(
          vertical: 10), //Change this value to custom as you like
      isDense: true,
      labelStyle: Theme.of(context).textTheme.headline5.copyWith(
          color: Theme.of(context).primaryColor, fontWeight: FontWeight.w800),
      focusedBorder: InputBorder.none,
      enabledBorder: InputBorder.none,
      errorBorder: InputBorder.none,
      disabledBorder: InputBorder.none,
      border: InputBorder.none);
}

/// getColorfrom(#FFFFFF) hex
// ignore: missing_return
Color getColorFromHex(String hexColor) {
  hexColor = hexColor.replaceAll("#", "");
  if (hexColor.length == 6) {
    hexColor = "FF" + hexColor;
  }
  if (hexColor.length == 8) {
    return Color(int.parse("0x$hexColor"));
  }
}
