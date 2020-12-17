import 'package:chat_app/configuration.dart';
import 'package:chat_app/core/app_theme.dart';
import 'package:chat_app/core/logging_observer.dart';
import 'package:chat_app/core/root_provider.dart';
import 'package:chat_app/core/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

void main() {
  if (Configuration.logging) Bloc.observer = LoggingObserver();
  runApp(ChatApp());
}

class ChatApp extends StatelessWidget {
  static String title = 'Gelly';

  @override
  Widget build(BuildContext context) {
    return RootProvider(
      child: LayoutBuilder(builder: (context, constraints) {
        return OrientationBuilder(builder: (context, orientation) {
          SizerUtil().init(constraints, orientation);
          return MaterialApp(
            title: title,
            initialRoute: Router.auth,
            theme: AppTheme.lightTheme,
            onGenerateRoute: (RouteSettings settings) =>
                Router.generateRoute(settings),
          );
        });
      }),
    );
  }
}

/// TODO:
//  Create a http api class that calls api
//  Create a chat list page
//  Implement socket connection
//  Create chat based on socket connection
