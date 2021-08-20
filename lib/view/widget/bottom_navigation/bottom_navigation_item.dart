import 'package:flutter/widgets.dart';
import 'package:tawtheiq/common/settings.dart';
import 'package:tawtheiq/common/types.dart';
import 'package:tawtheiq/view/widget/svg_button.dart';

class CustomBottomNavigationItem extends StatelessWidget {
  final bool active;
  final VoidFunction onClick;

  const CustomBottomNavigationItem(
      {Key? key, required this.active, required this.onClick})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SVGButton(asset: AppIcons.ICON_TASKS_LIST, onClick: () {});
  }
}
