import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:tawtheiq/common/settings.dart';
import 'package:tawtheiq/view/screen/overview/overview_item.dart';

class OverViewSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        primary: false,
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: Column(
              children: [
                Text("Hello, Wissam Bahloul"),
                Text("Hello, Wissam Bahloul"),
                Text("Hello, Wissam Bahloul"),
                Text("Hello, Wissam Bahloul"),
              ],
            ),
          ),
          SliverStaggeredGrid.count(
            crossAxisCount: 6,
            mainAxisSpacing: 6,
            crossAxisSpacing: 6,
            staggeredTiles: const <StaggeredTile>[
              StaggeredTile.count(4, 3),
              StaggeredTile.count(2, 3),
              StaggeredTile.count(2, 3),
              StaggeredTile.count(4, 3),
              StaggeredTile.count(2, 3),
              StaggeredTile.count(2, 3),
              StaggeredTile.count(2, 3),
            ],
            children: <Widget>[
              OverViewItem(
                  filled: false,
                  color: Colors.accents[1],
                  text: "You have postponded  moms",
                  count: "3",
                  icon: AppIcons.ICON_CLOCK),
              OverViewItem(
                  filled: true,
                  color: Colors.accents[1],
                  text: "You have postponded  moms",
                  count: "3",
                  icon: AppIcons.ICON_CLOCK),
              OverViewItem(
                  filled: true,
                  color: Colors.accents[1],
                  text: "You have postponded  moms",
                  count: "3",
                  icon: AppIcons.ICON_CLOCK),
              OverViewItem(
                  filled: true,
                  color: Colors.accents[1],
                  text: "You have postponded  moms",
                  count: "3",
                  icon: AppIcons.ICON_CLOCK),
              OverViewItem(
                  filled: true,
                  color: Colors.accents[1],
                  text: "You have postponded  moms",
                  count: "3",
                  icon: AppIcons.ICON_CLOCK),
              OverViewItem(
                  filled: true,
                  color: Colors.accents[1],
                  text: "You have postponded  moms",
                  count: "3",
                  icon: AppIcons.ICON_CLOCK),
              OverViewItem(
                  filled: true,
                  color: Colors.accents[1],
                  text: "You have postponded  moms",
                  count: "3",
                  icon: AppIcons.ICON_CLOCK),
            ],
          )
        ]);
  }
}
