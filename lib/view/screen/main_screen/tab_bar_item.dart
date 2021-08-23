import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabBarItem extends StatelessWidget {
  final bool active;
  final String text;

  const TabBarItem({Key? key, required this.active, required this.text})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: active
          ? Theme.of(context)
              .textTheme
              .headline5
              ?.copyWith(color: Theme.of(context).colorScheme.primary)
          : Theme.of(context)
              .textTheme
              .bodyText1
              ?.copyWith(color: Theme.of(context).colorScheme.secondary),
    );
  }
}
