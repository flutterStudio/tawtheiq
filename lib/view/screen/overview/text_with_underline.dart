import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextWithUnderline extends StatelessWidget {
  final String text;
  final Color lineColor;
  final double lineWidth;

  const TextWithUnderline(
      {Key? key,
      required this.text,
      required this.lineColor,
      required this.lineWidth})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            style: Theme.of(context)
                .textTheme
                .subtitle1
                ?.copyWith(color: Theme.of(context).colorScheme.primary),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
              decoration: BoxDecoration(
            border: Border(
                top: BorderSide(
              color: lineColor,
              width: lineWidth,
            )),
          )),
        ],
      ),
    );
  }
}
