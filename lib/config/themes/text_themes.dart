import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tawtheiq/config/size_config.dart';
import 'package:tawtheiq/config/themes/app_theme.dart';

class AppTextTheme {
  static TextTheme getTextTheme(BuildContext context, AppTheme theme) {
    switch (theme) {
      case AppTheme.light:
        return TextTheme(
          headline1: TextStyles.h1(context),
          headline2: TextStyles.h2(context),
          headline3: TextStyles.h3(context),
          headline4: TextStyles.h4(context),
          headline5: TextStyles.h5(context),
          headline6: TextStyles.h6(context),
          bodyText1: TextStyles.bodytext1(context),
          bodyText2: TextStyles.bodytext2(context),
          subtitle1: TextStyles.subtitle1(context),
          button: TextStyles.button(context),
          caption: TextStyles.caption(context),
          overline: TextStyles.overline(context),
        );
      case AppTheme.dark:
        return TextTheme(
            headline1: TextStyles.h1(context),
            headline2: TextStyles.h2(context),
            headline3: TextStyles.h3(context),
            headline4: TextStyles.h4(context),
            headline5: TextStyles.h5(context),
            headline6: TextStyles.h6(context),
            bodyText1: TextStyles.bodytext1(context),
            bodyText2: TextStyles.bodytext2(context),
            subtitle1: TextStyles.subtitle1(context),
            button: TextStyles.button(context),
            caption: TextStyles.caption(context),
            overline: TextStyles.overline(context));
    }
  }
}

class TextStyles {
  static TextStyle h1(BuildContext context) =>
      getTextStyle(context, FontType.h1);

  static TextStyle h2(BuildContext context) =>
      getTextStyle(context, FontType.h2);

  static TextStyle h3(BuildContext context) =>
      getTextStyle(context, FontType.h3);

  static TextStyle h4(BuildContext context) =>
      getTextStyle(context, FontType.h4);

  static TextStyle h5(BuildContext context) =>
      getTextStyle(context, FontType.h5);

  static TextStyle h6(BuildContext context) =>
      getTextStyle(context, FontType.h6);

  static TextStyle bodytext1(BuildContext context) =>
      getTextStyle(context, FontType.bodytext1);

  static TextStyle bodytext2(BuildContext context) =>
      getTextStyle(context, FontType.bodytext2);

  static TextStyle subtitle1(BuildContext context) =>
      getTextStyle(context, FontType.subtitle1);

  static TextStyle subtitle2(BuildContext context) =>
      getTextStyle(context, FontType.subtitle2);

  static TextStyle button(BuildContext context) =>
      getTextStyle(context, FontType.button);

  static TextStyle caption(BuildContext context) =>
      getTextStyle(context, FontType.caption);

  static TextStyle overline(BuildContext context) =>
      getTextStyle(context, FontType.overline);

  static TextStyle getTextStyle(BuildContext context, FontType type) =>
      TextStyle(fontSize: SizeConfig.fontSize(type, context));
}
