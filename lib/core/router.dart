import 'package:chat_app/auth/auth_page.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class Router {
  static const String home = '/';
  static const String auth = '/auth';

  ///Generates a [List] of named [PageRoute]s
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case auth:
        return PageTransition(
          child: AuthPage(),
          type: PageTransitionType.fade,
          settings: settings,
        );
      default:
        //Returning null will map to the default PageRoute
        return null;
    }
  }
}
