import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class StatsLineare extends StatelessWidget {
  final String text;
  final String subTitle;
  final double value;

  final bool;

  const StatsLineare(
      {Key? key,
      required this.text,
      required this.subTitle,
      required this.value,
      required this.bool})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Text(value.round().toString(),
              style: Theme.of(context).textTheme.headline3?.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                  )),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(text,
                  style: Theme.of(context).textTheme.bodyText1?.copyWith(
                        color: Theme.of(context).colorScheme.secondary,
                      )),
              Text(text,
                  style: Theme.of(context).textTheme.bodyText2?.copyWith(
                        color: Theme.of(context).colorScheme.error,
                      )),
            ],
          )
        ],
      ),
    );
  }
}
