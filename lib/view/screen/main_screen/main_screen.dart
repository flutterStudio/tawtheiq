import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tawtheiq/view/mixins/main_content_mixin.dart';
import 'package:tawtheiq/view/screen/details/details_screen.dart';
import 'package:tawtheiq/view/screen/overview/overview_section.dart';
import 'package:tawtheiq/view/screen/stats/stats_screen.dart';

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
                  Expanded(
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
                  // Expanded(
                  //   child: Container(),
                  //   flex: 1,
                  // ),
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
              child: TabBarView(controller: controller, children: [
                OverViewSection(),
                StatsScreen(),
                DetailsSCreen()
              ]),
            ))
      ],
    );
  }
}
