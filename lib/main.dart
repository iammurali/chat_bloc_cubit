import 'package:chat_app/configuration.dart';
import 'package:chat_app/core/logging_observer.dart';
import 'package:chat_app/core/root_provider.dart';
import 'package:chat_app/core/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  if (Configuration.logging) Bloc.observer = LoggingObserver();
  runApp(ChatApp());
}

class ChatApp extends StatelessWidget {
  static String title = 'Gelly';

  @override
  Widget build(BuildContext context) {
    return RootProvider(
      child: MaterialApp(
        title: title,
        initialRoute: Router.auth,
        onGenerateRoute: (RouteSettings settings) =>
            Router.generateRoute(settings),
      ),
    );
  }
}
