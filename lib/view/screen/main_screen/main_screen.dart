import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tawtheiq/view/mixins/main_content_mixin.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>
    with MainContent, TickerProviderStateMixin {
  TabController? controller;

  @override
  initState() {
    controller = TabController(
      length: 3,
      vsync: this,
    );
    super.initState();
  }

  @override
  Widget body() {
    return Container(
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: RotatedBox(
              quarterTurns: 3,
              child: TabBar(controller: controller, tabs: [
                Text(
                  "Details",
                  style: Theme.of(context).textTheme.headline5?.copyWith(
                      color: Theme.of(context).colorScheme.secondary),
                ),
                Text(
                  "Statistics",
                  style: Theme.of(context).textTheme.headline5?.copyWith(
                      color: Theme.of(context).colorScheme.secondary),
                ),
                Text(
                  "Overview",
                  style: Theme.of(context).textTheme.headline5?.copyWith(
                      color: Theme.of(context).colorScheme.secondary),
                )
              ]),
            ),
          ),
          Expanded(
            flex: 4,
            child: TabBarView(
                controller: controller,
                children: [Text("page1"), Text("page2"), Text("page3")]),
          )
        ],
      ),
    );
  }
}
