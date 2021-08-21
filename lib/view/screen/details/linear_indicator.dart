import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LinearIndicator extends StatelessWidget {
  final double? firstValue;
  final double? secondValue;

  final Color? firstValueColor;
  final Color? secondValueColor;

  const LinearIndicator(
      {Key? key,
      this.firstValue,
      this.secondValue,
      this.firstValueColor,
      this.secondValueColor})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 0.5),
                borderRadius: BorderRadius.circular(20)),
            child: LayoutBuilder(
              builder: (context, constraints) => Stack(
                children: [
                  Container(
                    height: 5,
                    width: constraints.constrainWidth() *
                        (secondValue! + secondValue!),
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(50)),
                  ),
                  Container(
                    height: 5,
                    width: constraints.constrainWidth() * firstValue!,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(50)),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
