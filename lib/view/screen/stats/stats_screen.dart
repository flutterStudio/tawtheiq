import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tawtheiq/view/screen/stats/circular_progress.dart';
import 'package:tawtheiq/view/screen/stats/stats_linear.dart';
import 'package:tawtheiq/view/screen/stats/stats_pie_chart.dart';
import 'package:tawtheiq/view/widget/spacer_widget.dart';

class StatsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("MOM Statistics",
                  style: Theme.of(context)
                      .textTheme
                      .headline5
                      ?.copyWith(color: Theme.of(context).colorScheme.primary)),
              DropdownButton(
                  icon: Icon(Icons.keyboard_arrow_down_outlined),
                  underline: Container(),
                  items: [
                    DropdownMenuItem(
                        child: Text(
                      "Last Month",
                      style: Theme.of(context).textTheme.subtitle1?.copyWith(
                          color: Theme.of(context).colorScheme.secondary),
                    ))
                  ])
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 30),
            child: Column(
              children: [
                StatsLineare(
                    text: "MOM Attende ( Last Month)",
                    subTitle: "+20% Since Last Month",
                    value: 30,
                    bool: true),
                Divider(
                  color: Theme.of(context).colorScheme.secondary,
                ),
                StatsLineare(
                    text: "MOM Attende ( Last Month)",
                    subTitle: "+20% Since Last Month",
                    value: 30,
                    bool: true),
                Divider(
                  color: Theme.of(context).colorScheme.secondary,
                ),
                StatsLineare(
                    text: "MOM Attende ( Last Month)",
                    subTitle: "+20% Since Last Month",
                    value: 30,
                    bool: true),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Actions Statistics",
                  style: Theme.of(context)
                      .textTheme
                      .headline5
                      ?.copyWith(color: Theme.of(context).colorScheme.primary)),
              DropdownButton(
                  icon: Icon(Icons.keyboard_arrow_down_outlined),
                  underline: Container(),
                  items: [
                    DropdownMenuItem(
                        child: Text(
                      "Last Month",
                      style: Theme.of(context).textTheme.subtitle1?.copyWith(
                          color: Theme.of(context).colorScheme.secondary),
                    ))
                  ])
            ],
          ),
          SpacerWidget.vertical(),
          Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CircularProgress(
                    title: "Attende",
                    color: Theme.of(context).colorScheme.primary,
                    value: .76,
                  ),
                  CircularProgress(
                    title: "Review",
                    color: Theme.of(context).colorScheme.primary,
                    value: .5,
                  ),
                  CircularProgress(
                    title: "Approve",
                    color: Theme.of(context).colorScheme.primary,
                    value: .6,
                  ),
                ],
              )),
          SpacerWidget.vertical(),
          SizedBox(height: 300, child: StatsChart()),
        ],
      ),
    );
  }
}
