import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tawtheiq/common/settings.dart';
import 'package:tawtheiq/view/widget/svg_button.dart';

class CustomTopBar extends StatelessWidget with PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
              flex: 3,
              child: Row(
                children: [
                  Icon(Icons.calendar_today_rounded),
                  const Text("22/7/2021")
                ],
              )),
          Expanded(
            flex: 1,
            child: SvgPicture.asset(
              "assets/icons/logo.svg",
            ),
          ),
          Expanded(
              flex: 3,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SVGButton(asset: AppIcons.ICON_SEARCH, onClick: () {}),
                  SVGButton(asset: AppIcons.ICON_NOTIFICATION, onClick: () {}),
                  CircleAvatar(
                    child: const Text("WB"),
                  )
                ],
              )),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(100);
}
