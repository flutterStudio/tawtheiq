import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tawtheiq/common/types.dart';
import 'package:tawtheiq/config/size_config.dart';

class SVGButton extends StatelessWidget {
  final String asset;
  final VoidFunction? onClick;
  final double? size;
  final Color? color;

  const SVGButton(
      {required this.asset, required this.onClick, this.color, this.size});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: this.onClick,
        child: SvgPicture.asset(
          this.asset,
          width: size ?? ICONSIZE.MD,
          color: color ?? Theme.of(context).colorScheme.primary,
        ));
  }
}
