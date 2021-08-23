import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tawtheiq/common/settings.dart';
import 'package:tawtheiq/config/size_config.dart';
import 'package:tawtheiq/utils/date_time_utils.dart';
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
                  SvgPicture.asset(
                    AppIcons.ICON_CALENDAR,
                    width: ICONSIZE.SM,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    DateTimeUtils.formatDate(DateTime.now(), separator: "/"),
                    style: Theme.of(context).textTheme.subtitle1?.copyWith(
                        color: Theme.of(context).colorScheme.onBackground),
                  )
                ],
              )),
          Expanded(
            flex: 1,
            child: SvgPicture.asset(
              AppIcons.ICON_LOGO,
              width: ICONSIZE.XLG,
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
                          color: Theme.of(context).colorScheme.primary,
                          onClick: () {},
                        ),
                        SVGButton(
                            asset: AppIcons.ICON_NOTIFICATION,
                            color: Theme.of(context).colorScheme.primary,
                            onClick: () {}),
                        Avatar(
                          child: Text(
                            "WC",
                            style: Theme.of(context)
                                .textTheme
                                .caption
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
