import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tawtheiq/common/settings.dart';
import 'package:tawtheiq/view/widget/avatar_widget.dart';
import 'package:tawtheiq/view/widget/svg_button.dart';

class CustomTopBar extends StatelessWidget with PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
              flex: 3,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.calendar_today_rounded,
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "22/7/2021",
                    style: Theme.of(context).textTheme.subtitle1?.copyWith(
                        color: Theme.of(context).colorScheme.onBackground),
                  )
                ],
              )),
          // Expanded(flex: 1, child: Container()),
          Expanded(
            flex: 1,
            child: SvgPicture.asset(
              AppIcons.ICON_LOGO,
            ),
          ),
          // Expanded(flex: 1, child: Container()),
          Expanded(
              flex: 3,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(child: Container()),
                  Expanded(
                    flex: 5,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SVGButton(
                          asset: AppIcons.ICON_SEARCH,
                          onClick: () {},
                        ),
                        SVGButton(
                            asset: AppIcons.ICON_NOTIFICATION, onClick: () {}),
                        Avatar(
                          child: Text(
                            "Wc",
                            style: Theme.of(context)
                                .textTheme
                                .subtitle1
                                ?.copyWith(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .background),
                          ),
                        )
                      ],
                    ),
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
