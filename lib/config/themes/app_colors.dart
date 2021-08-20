import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppColors {
  static const Color _DARK_GREY = Color(0xFF232121);
  static const Color _GREY_BLUE = Color(0xFF174674);
  static const Color _LIGHT_GREY = Color(0x33030303);
  static const Color _WHITE = Colors.white;
  static const Color _DARK_ORANGE = Color(0xffdd2c00);
  static const Color _DARK_BLUE = Color(0xff174674);
  static const Color _GREY = Color(0xff707070);

  // statiSc const Color _GOLDEN = Color(0xffEBAC2D);
  // static const Color _RED = Color(0xffF83131);
  // static const Color _DARK_RED = Color(0xffCE0E12);
  // no need for extending color scheme.
  static const CustomColorScheme DARK_COLOR_SCHEME = CustomColorScheme(
    primary: _DARK_BLUE,
    brightness: Brightness.light,
    primaryVariant: _GREY_BLUE,
    secondaryVariant: _DARK_GREY,
    secondary: _DARK_GREY,
    background: _WHITE,
    error: _DARK_ORANGE,
    onBackground: _GREY,
    onError: _WHITE,
    onPrimary: _WHITE,
    onSecondary: _WHITE,
    surface: _WHITE,
    onSurface: _DARK_GREY,
    icon: _WHITE,
    activeIcon: _DARK_ORANGE,
    inactiveIcon: _LIGHT_GREY,
  );
}

class CustomColorScheme extends ColorScheme {
  final Color? icon;
  final Color? activeIcon;
  final Color? inactiveIcon;
  const CustomColorScheme(
      {required Color primary,
      required Brightness brightness,
      required Color primaryVariant,
      required Color secondaryVariant,
      required Color secondary,
      required Color background,
      required Color error,
      required Color onBackground,
      required Color onError,
      required Color onPrimary,
      required Color onSecondary,
      required Color surface,
      required Color onSurface,
      this.activeIcon,
      this.icon,
      this.inactiveIcon})
      : super(
          primary: primary,
          brightness: brightness,
          primaryVariant: primaryVariant,
          secondaryVariant: secondaryVariant,
          secondary: secondary,
          background: background,
          error: error,
          onBackground: onBackground,
          onError: onError,
          onPrimary: onPrimary,
          onSecondary: onSecondary,
          surface: surface,
          onSurface: onSurface,
        );
}
