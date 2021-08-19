import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final Color? color;
  final Widget? child;

  const Avatar({this.color, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(3),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
              width: 1, color: color ?? Theme.of(context).colorScheme.primary)),
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color ?? Theme.of(context).colorScheme.primary),
        child: child,
      ),
    );
  }
}
