import 'package:flutter/material.dart';
import 'package:chat_app/core/app_theme.dart';

class MemoriesPage extends StatefulWidget {
  @override
  _MemoriesPageState createState() => _MemoriesPageState();
}

class _MemoriesPageState extends State<MemoriesPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueAccent,
      child: Center(
        child: Column(
          children: [
            Text(
              'Headline 5',
              style: Theme.of(context).textTheme.headline5,
            ),
            Text(
              'Headline 6',
              style: Theme.of(context).textTheme.headline6,
            ),
            Text(
              'bodyText1',
              style: Theme.of(context).textTheme.bodyText1,
            ),
            Text(
              'bodyText2',
              style: Theme.of(context).textTheme.bodyText2,
            ),
            Text(
              'button',
              style: Theme.of(context).textTheme.button,
            ),
            Text(
              'caption',
              style: Theme.of(context).textTheme.caption,
            ),
            Text(
              'subtitle1',
              style: Theme.of(context).textTheme.subtitle1,
            ),
            Text(
              'subtitle2',
              style: Theme.of(context).textTheme.subtitle2,
            ),
            Text(
              'overline',
              style: Theme.of(context).textTheme.overline,
            ),
            Text(
              'TabSize',
              style: Theme.of(context).textTheme.unselectedHeadline5,
            ),
          ],
        ),
      ),
    );
  }
}
