import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AppTheme {
  static const Color _primary = Color.fromRGBO(12, 172, 101, 1);
  static const Color _accent = Color.fromRGBO(0, 102, 51, 1);
  static const Color _lightGray = Color.fromRGBO(224, 224, 224, 1);
  AppTheme._();

  static final ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor: Colors.white,
      fontFamily: 'Nunito',
      primaryColor: _primary,
      //Text
      textTheme: _buildLightTextTheme(),
      primaryTextTheme: _buildLightTextTheme(),
      accentTextTheme: _buildLightTextTheme(),
      buttonColor: _primary,
      buttonTheme: ButtonThemeData(
        buttonColor: _primary,
        textTheme: ButtonTextTheme.primary,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
      ));

  static final ThemeData darkTheme = ThemeData(
      scaffoldBackgroundColor: Colors.black,
      fontFamily: 'Nunito',
      textTheme: _buildDarkTextTheme(),
      primaryTextTheme: _buildDarkTextTheme(),
      accentTextTheme: _buildDarkTextTheme(),
      buttonColor: _primary);

  static TextTheme _buildLightTextTheme() {
    return TextTheme(
      headline6: TextStyle(color: Colors.black),
      button: TextStyle(
        fontSize: 15.0.sp,
        color: Colors.black,
      ),
      caption: TextStyle(
        fontSize: 12.0.sp,
      ),
    );
  }

  static TextTheme _buildDarkTextTheme() {
    return TextTheme(
      headline6: TextStyle(color: Colors.white),
      button: TextStyle(
        fontSize: 14.0.sp,
        color: Colors.white,
      ),
      caption: TextStyle(
        fontSize: 12.0.sp,
      ),
    );
  }
}
