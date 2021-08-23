import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:tawtheiq/view/mixins/main_content_mixin.dart';
import 'package:tawtheiq/view/screen/details/details_screen.dart';
import 'package:tawtheiq/view/screen/main_screen/tab_bar_item.dart';
import 'package:tawtheiq/view/screen/overview/overview_section.dart';
import 'package:tawtheiq/view/screen/stats/stats_screen.dart';
import 'package:tawtheiq/utils/extensions.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>
    with MainContent, TickerProviderStateMixin {
  TabController? controller;
  ValueNotifier<int> _activeTab = ValueNotifier<int>(0);

  @override
  initState() {
    controller = TabController(
      length: 3,
      vsync: this,
    );

    super.initState();
  }

  final List<String> _tabs = ["Overview", "Statistics", "Details"];

  @override
  Widget body() {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: OrientationBuilder(
            builder: (context, orientation) => RotatedBox(
              quarterTurns: orientation == Orientation.landscape ? 0 : 3,
              child: Flex(
                direction: orientation == Orientation.landscape
                    ? Axis.vertical
                    : Axis.horizontal,
                children: [
                  ValueListenableBuilder<int>(
                    valueListenable: _activeTab,
                    builder: (context, value, _) => Expanded(
                      child: TabBar(
                          onTap: (index) {
                            _activeTab.value = index;
                          },
                          controller: controller,
                          tabs: _tabs
                              .mapIndexed((e, i) =>
                                  TabBarItem(active: i == value, text: e))
                              .toList()),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        Expanded(
            flex: 8,
            child: Container(
              clipBehavior: Clip.none,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: TabBarView(
                  physics: NeverScrollableScrollPhysics(),
                  controller: controller,
                  children: [
                    OverViewSection(),
                    StatsScreen(),
                    DetailsSCreen()
                  ]),
            ))
      ],
    );
  }
}
