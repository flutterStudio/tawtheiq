import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tawtheiq/common/settings.dart';
import 'package:tawtheiq/config/size_config.dart';
import 'package:tawtheiq/view/widget/spacer_widget.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      "assets/images/back.jpg",
                    ),
                    fit: BoxFit.cover)),
          ),
          Container(
            color: Theme.of(context).colorScheme.primary.withOpacity(0.5),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SvgPicture.asset(
                      AppIcons.ICON_LOGO,
                      color: Theme.of(context).colorScheme.onPrimary,
                      width: ICONSIZE.XLG,
                      height: ICONSIZE.XLG,
                    ),
                    SpacerWidget.horizontal(),
                    Text(
                      "Tawtheiq",
                      style: Theme.of(context).textTheme.headline4?.copyWith(
                          color: Theme.of(context).colorScheme.onPrimary),
                    ),
                  ],
                ),
                Expanded(child: Container()),
                Text(
                  "Hello there,",
                  style: Theme.of(context).textTheme.headline5?.copyWith(
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                ),
                SpacerWidget.vertical(
                  size: 5,
                ),
                Text(
                  "Welcome On board!",
                  style: Theme.of(context).textTheme.headline5?.copyWith(
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                ),
                SpacerWidget.vertical(
                  size: 5,
                ),
                Text(
                  "Stay Up to MEET",
                  style: Theme.of(context).textTheme.headline3?.copyWith(
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                ),
                SpacerWidget.vertical(),
                _button(
                    context,
                    "Sign in",
                    Theme.of(context).colorScheme.primary,
                    Theme.of(context).colorScheme.onPrimary),
                _button(
                    context,
                    "Sign up",
                    Theme.of(context).colorScheme.onPrimary,
                    Theme.of(context).colorScheme.onPrimary.withOpacity(0.5),
                    border: Theme.of(context).colorScheme.onPrimary),
                SpacerWidget.vertical(
                  size: 5,
                ),
                Text(
                  "OR Sign in with",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.caption?.copyWith(
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                ),
                SpacerWidget.vertical(
                  size: 5,
                ),
                Row(
                  children: [
                    Expanded(
                      child: _button(
                          context,
                          "Apple",
                          Theme.of(context).colorScheme.surface,
                          Theme.of(context)
                              .colorScheme
                              .onPrimary
                              .withOpacity(0.3),
                          icon: AppIcons.ICON_APPLE,
                          border: Theme.of(context).colorScheme.onPrimary),
                    ),
                    SpacerWidget.horizontal(
                      size: 5,
                    ),
                    Expanded(
                      child: _button(
                          context,
                          "Google",
                          Theme.of(context).colorScheme.surface,
                          Theme.of(context)
                              .colorScheme
                              .primary
                              .withOpacity(0.3),
                          icon: AppIcons.ICON_GOOGLE,
                          border: Theme.of(context).colorScheme.primary),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: _button(
                          context,
                          "Office 365",
                          Theme.of(context).colorScheme.surface,
                          Color(0XFFF13C00).withOpacity(0.3),
                          icon: AppIcons.ICON_OFFICE,
                          border: Color(0XFFF13C00)),
                    ),
                    SpacerWidget.horizontal(
                      size: 5,
                    ),
                    Expanded(
                      child: _button(
                          context,
                          "Linkedin",
                          Theme.of(context).colorScheme.surface,
                          Theme.of(context)
                              .colorScheme
                              .primary
                              .withOpacity(0.3),
                          icon: AppIcons.ICON_LINKEDIN,
                          border: Theme.of(context).colorScheme.primary),
                    ),
                  ],
                ),
                Text(
                  "Login with other",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.caption?.copyWith(
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                ),
                Expanded(child: Container()),
              ],
            ),
          )
        ],
      ),
    );
  }

  Row _button(BuildContext context, String text, Color color, Color background,
      {Color? border, String? icon}) {
    return Row(
      children: [
        Expanded(
          child: OutlinedButton(
              style: ButtonStyle(
                padding:
                    MaterialStateProperty.all<EdgeInsets?>(EdgeInsets.all(10)),
                backgroundColor: MaterialStateProperty.all<Color>(background),
                foregroundColor: MaterialStateProperty.all<Color>(color),
                side: MaterialStateProperty.resolveWith<BorderSide>(
                    (Set<MaterialState> states) {
                  return BorderSide(
                    color: border == null ? background : border,
                    width: 1,
                  );
                }),
              ),
              onPressed: () {},
              child: Row(
                children: [
                  Expanded(child: Container()),
                  icon == null
                      ? Container()
                      : SvgPicture.asset(
                          icon,
                          width: ICONSIZE.XSM,
                        ),
                  SpacerWidget.horizontal(
                    size: 5,
                  ),
                  Text(text,
                      style: Theme.of(context)
                          .textTheme
                          .caption
                          ?.copyWith(color: color)),
                  Expanded(child: Container()),
                ],
              )),
        ),
      ],
    );
  }
}
