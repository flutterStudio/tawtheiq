import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class CircularProgress extends StatelessWidget {
  final String title;
  final double value;
  final Color color;
  final Color? background;

  const CircularProgress(
      {Key? key,
      required this.title,
      required this.value,
      required this.color,
      this.background})
      : assert(value >= 0 && value <= 1),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.bodyText2,
        ),
        SizedBox(
          height: 10,
        ),
        CircularPercentIndicator(
            radius: 75.0,
            lineWidth: 10.0,
            animation: true,
            percent: 0.7,
            backgroundColor: this.background ??
                Theme.of(context).colorScheme.secondaryVariant,
            circularStrokeCap: CircularStrokeCap.round,
            progressColor: Colors.purple,
            center: Text(
              "${(value * 100).round().toString()}%",
              style: TextStyle(fontSize: 12.0),
            )),
      ],
    );
  }
}
