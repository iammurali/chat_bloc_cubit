import 'package:chat_app/chat/chat_page.dart';
import 'package:chat_app/core/app_theme.dart';
import 'package:chat_app/core/utils.dart';
import 'package:chat_app/memories/memories_page.dart';
import 'package:chat_app/more/more_page.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final _kTabPages = [MemoriesPage(), ChatPage(), MorePage()];
    final _kTabs = <Tab>[
      Tab(text: 'MEMORIES'),
      Tab(text: 'CHAT'),
      Tab(text: 'OTHERS'),
    ];
    return DefaultTabController(
      initialIndex: 1,
      length: _kTabs.length,
      child: Scaffold(
        appBar: new PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: new Container(
            child: new SafeArea(
              child: Column(
                children: [
                  Expanded(child: Container()),
                  AppTabBar(kTabs: _kTabs),
                ],
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: _kTabPages,
        ),
      ),
    );
  }
}

/// Custom app tab bar [AppTabBar]
class AppTabBar extends StatelessWidget {
  const AppTabBar({
    Key key,
    @required List<Tab> kTabs,
  })  : _kTabs = kTabs,
        super(key: key);

  final List<Tab> _kTabs;

  @override
  Widget build(BuildContext context) {
    return new TabBar(
      dragStartBehavior: DragStartBehavior.down,
      indicatorSize: TabBarIndicatorSize.label,
      indicatorPadding: EdgeInsets.zero,
      indicatorColor: Colors.white,
      indicatorWeight: 2.0,
      unselectedLabelStyle: Theme.of(context).textTheme.unselectedHeadline5,
      labelStyle: Theme.of(context).textTheme.headline6,
      tabs: _kTabs,
    );
  }
}
