import 'package:flutter/cupertino.dart';

class SpacerWidget extends StatelessWidget {
  final Axis _direction;
  final double? size;

  const SpacerWidget.horizontal({Key? key, this.size = 10})
      : _direction = Axis.horizontal,
        super(key: key);

  const SpacerWidget.vertical({Key? key, this.size = 10})
      : _direction = Axis.vertical,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return _direction == Axis.vertical
        ? SizedBox(
            height: size,
          )
        : SizedBox(width: size);
  }
}
