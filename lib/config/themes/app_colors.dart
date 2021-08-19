import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppColors {
  static const Color _DARk_GREY = Color(0xFF232121);
  static const Color _DARk_GREY_X = Color(0xFF030303);
  static const Color _LIGHT_GREY = Color(0x33030303);
  static const Color _WHITE = Colors.white;
  static const Color _DARK_ORANGE = Color(0xffdd2c00);

  // no need for extending color scheme.
  static const CustomColorScheme DARK_COLOR_SCHEME = CustomColorScheme(
    primary: _DARk_GREY,
    brightness: Brightness.light,
    primaryVariant: _DARk_GREY,
    secondaryVariant: _DARK_ORANGE,
    secondary: _DARK_ORANGE,
    background: _DARk_GREY,
    error: _DARK_ORANGE,
    onBackground: _WHITE,
    onError: _WHITE,
    onPrimary: _WHITE,
    onSecondary: _DARk_GREY_X,
    surface: _WHITE,
    onSurface: _DARk_GREY_X,
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
