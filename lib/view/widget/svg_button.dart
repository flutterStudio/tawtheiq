import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tawtheiq/common/types.dart';

class SVGButton extends StatelessWidget {
  final String asset;
  final VoidFunction? onClick;

  const SVGButton({required this.asset, required this.onClick});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: this.onClick, child: SvgPicture.asset(this.asset));
  }
}
