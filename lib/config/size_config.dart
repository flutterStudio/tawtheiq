import 'package:flutter/cupertino.dart';

enum ScreenSize { xs, sm, md, lg, xlg, xxlg }

enum FontType {
  h1,
  h2,
  h3,
  h4,
  h5,
  h6,
  bodytext1,
  bodytext2,
  subtitle1,
  subtitle2,
  button,
  caption,
  overline
}

// Icons sizes

class SizeConfig {
  static const double REM_2_PIX = 16;
  static ScreenSize screenSize(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return width < 576
        ? ScreenSize.xs
        : width >= 576 && width < 768
            ? ScreenSize.sm
            : width >= 768 && width < 992
                ? ScreenSize.md
                : width >= 992 && width < 1200
                    ? ScreenSize.lg
                    : width >= 1200 && width < 1400
                        ? ScreenSize.xlg
                        : ScreenSize.xxlg;
  }

  static const Map<ScreenSize, List<double>> _responsiveFontSize = {
    ScreenSize.xs: [3.5, 2.375, 2, 1.5625, 1.25, 1.125, 1],
    ScreenSize.sm: [4.7129, 2.9167, 2.5707, 1.8219, 1.3118, 1.25, 1],
    ScreenSize.md: [5.3556, 3.3333, 2.7849, 2.0243, 1.4993, 1.25, 1],
    ScreenSize.lg: [5.9983, 3.75, 2.9991, 2.0243, 1.4993, 1.25, 1],
    ScreenSize.xlg: [5.9983, 3.75, 2.9991, 2.0243, 1.4993, 1.25, 1],
    ScreenSize.xxlg: [5.9983, 3.75, 2.9991, 2.0243, 1.4993, 1.25, 1],
  };

  static double? fontSize(FontType type, BuildContext context) {
    double? fontSize = type.index > 5
        ? 1
        : _responsiveFontSize[screenSize(context)]?.elementAt(type.index);
    return REM_2_PIX * fontSize!;
  }
}

class ICONSIZE {
  static const double SM = 18;
  static const double MD = 24;
  static const double LG = 36;
  static const double XLG = 36;
}
