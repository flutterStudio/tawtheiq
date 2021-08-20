import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tawtheiq/common/settings.dart';
import 'package:tawtheiq/config/size_config.dart';
import 'package:tawtheiq/view/widget/svg_button.dart';

class CustomBottomNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: EdgeInsets.symmetric(vertical: 10),
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Stack(
        children: [
          Positioned(
            right: 45,
            child: Container(
              width: MediaQuery.of(context).size.width - 100,
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                      spreadRadius: 0,
                      blurRadius: 30,
                      color: Theme.of(context)
                          .colorScheme
                          .onBackground
                          .withOpacity(0.3),
                      offset: Offset(0, 3))
                ],
                color: Theme.of(context).colorScheme.background,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SVGButton(
                    asset: AppIcons.ICON_MENU,
                    onClick: () {},
                    size: ICONSIZE.MD,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  SVGButton(
                    asset: AppIcons.ICON_TASKS_LIST,
                    onClick: () {},
                  ),
                  SVGButton(asset: AppIcons.ICON_CHECK_LIST, onClick: () {}),
                  SVGButton(asset: AppIcons.ICON_LIST, onClick: () {}),
                ],
              ),
            ),
          ),
          Positioned(
              right: 10,
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        spreadRadius: 0,
                        blurRadius: 10,
                        color: Theme.of(context).colorScheme.onBackground,
                      )
                    ],
                    color: Theme.of(context).colorScheme.primary),
                child: SVGButton(
                  asset: AppIcons.ICON_ADD_TASK,
                  onClick: () {},
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
              )),
        ],
      ),
    );
  }
}
