import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AppTheme {
  static const Color _primary = Color(0XFFFF3100);
  static const Color primary = Color(0XFFFF3100);
  static const Color _accent = Color.fromRGBO(0, 102, 51, 1);
  static const Color _lightGray = Color.fromRGBO(224, 224, 224, 1);
  AppTheme._();

  static final ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor: Colors.white,
      fontFamily: 'Poppins',
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
      scaffoldBackgroundColor: Color(0XFF1C1C1C),
      fontFamily: 'Nunito',
      textTheme: _buildDarkTextTheme(),
      primaryTextTheme: _buildDarkTextTheme(),
      accentTextTheme: _buildDarkTextTheme(),
      primaryColor: _primary,
      buttonColor: _primary,
      buttonTheme: ButtonThemeData(
        buttonColor: _primary,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
      ));

  static TextTheme _buildLightTextTheme() {
    return TextTheme(
      headline6: TextStyle(color: Colors.white),
      button: TextStyle(
        fontSize: 15.0.sp,
        color: Colors.white,
      ),
      caption: TextStyle(
        fontSize: 12.0.sp,
      ),
    );
  }

  static TextTheme _buildDarkTextTheme() {
    return TextTheme(
      overline: TextStyle(),
      subtitle2: TextStyle(),
      subtitle1: TextStyle(),
      bodyText2: TextStyle(),
      bodyText1: TextStyle(),
      headline6: TextStyle(),
      // can be used for tabs
      headline5: TextStyle(
        fontSize: 13.0.sp,
        fontWeight: FontWeight.w600,
      ),
      headline4: TextStyle(),
      headline3: TextStyle(),
      headline2: TextStyle(color: Colors.white),
      headline1: TextStyle(),
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

extension CustomStyles on TextTheme {
  TextStyle get error {
    return TextStyle(
      fontSize: 18.0.sp,
      color: Colors.red,
      fontWeight: FontWeight.bold,
    );
  }

  TextStyle get unselectedHeadline5 {
    return TextStyle(
        color: Colors.black54,
        fontSize: 13.0.sp,
        fontWeight: FontWeight.w600,
        fontFamily: 'Poppins-SemiBold');
  }
}
