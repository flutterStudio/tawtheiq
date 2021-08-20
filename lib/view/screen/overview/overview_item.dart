import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tawtheiq/config/size_config.dart';

class OverViewItem extends StatelessWidget {
  final bool filled;
  final Color color;
  final String icon;
  final String text;
  final String count;

  const OverViewItem(
      {Key? key,
      required this.filled,
      required this.color,
      required this.icon,
      required this.text,
      required this.count})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: filled ? color : Theme.of(context).colorScheme.background,
          border: filled ? Border() : Border.all(color: color),
          boxShadow: [
            BoxShadow(
                spreadRadius: 0,
                blurRadius: 20,
                color:
                    Theme.of(context).colorScheme.onBackground.withOpacity(0.3),
                offset: Offset(0, 3))
          ],
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SvgPicture.asset(
            icon,
            color: filled ? Theme.of(context).colorScheme.background : color,
            height: ICONSIZE.XLG,
          ),
          Text(
            text,
            style: Theme.of(context).textTheme.bodyText1?.copyWith(
                color:
                    filled ? Theme.of(context).colorScheme.background : color),
          ),
          Text(
            count,
            style: Theme.of(context).textTheme.subtitle1?.copyWith(
                color:
                    filled ? Theme.of(context).colorScheme.background : color),
          ),
        ],
      ),
    );
  }
}
