import 'package:flutter/material.dart';
import 'package:tawtheiq/view/screen/main_screen.dart';
import 'package:tawtheiq/config/themes/app_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Builder(
        builder: (context) => Theme(
            data: ThemeConfig.change(context, AppTheme.dark),
            child: MainScreen()),
      ),
    );
  }
}
