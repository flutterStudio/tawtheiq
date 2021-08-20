import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:tawtheiq/common/settings.dart';
import 'package:tawtheiq/view/screen/overview/overview_item.dart';
import 'package:tawtheiq/view/screen/overview/text_with_underline.dart';

class OverViewSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        primary: false,
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hello, Wissam Bahloul",
                  style: Theme.of(context)
                      .textTheme
                      .headline5
                      ?.copyWith(color: Theme.of(context).colorScheme.primary),
                ),
                Text(
                  "Art Directpr at Tawtheiq",
                  style: Theme.of(context).textTheme.subtitle1?.copyWith(
                      color: Theme.of(context)
                          .colorScheme
                          .primary
                          .withOpacity(0.5)),
                ),
                TextWithUnderline(
                    text: "You Have 3 MOMs Pending review For Today",
                    lineColor: Colors.accents[1],
                    lineWidth: 3),
                TextWithUnderline(
                    text: "You Have 2 MOMs pending approval For Today",
                    lineColor: Colors.accents[1],
                    lineWidth: 3),
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
                  icon: AppIcons.ICON_TASKS_LIST),
              OverViewItem(
                  filled: true,
                  color: Colors.accents[1],
                  text: "You have postponded  moms",
                  count: "3",
                  icon: AppIcons.ICON_DOC_SEARCH),
              OverViewItem(
                  filled: true,
                  color: Colors.accents[1],
                  text: "You have postponded  moms",
                  count: "3",
                  icon: AppIcons.ICON_DOC_SEARCH_FAILD),
              OverViewItem(
                  filled: true,
                  color: Colors.accents[1],
                  text: "You have postponded  moms",
                  count: "3",
                  icon: AppIcons.ICON_TODO_LIST),
              OverViewItem(
                  filled: true,
                  color: Colors.accents[1],
                  text: "You have postponded  moms",
                  count: "3",
                  icon: AppIcons.ICON_TODO_LIST),
              OverViewItem(
                  filled: true,
                  color: Colors.accents[1],
                  text: "You have postponded  moms",
                  count: "3",
                  icon: AppIcons.ICON_TODO_LIST),
            ],
          )
        ]);
  }
}
