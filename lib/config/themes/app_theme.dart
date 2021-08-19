import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tawtheiq/config/themes/app_colors.dart';
import 'package:tawtheiq/config/themes/text_themes.dart';

enum AppTheme { dark, light }

class ThemeConfig {
  static Map<AppTheme, ColorScheme> _themesColorSchemes = {
    AppTheme.dark: AppColors.DARK_COLOR_SCHEME,
    AppTheme.light: AppColors.DARK_COLOR_SCHEME,
  };

  static ThemeData change(BuildContext context, AppTheme theme) {
    return ThemeData.from(
        colorScheme: _themesColorSchemes[theme] ?? AppColors.DARK_COLOR_SCHEME,
        textTheme: AppTextTheme.getTextTheme(context, theme));
  }
}
