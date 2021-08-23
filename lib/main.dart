import 'package:flutter/material.dart';
import 'package:tawtheiq/config/routing/app_router.dart';
import 'package:tawtheiq/config/themes/app_theme.dart';
import 'package:tawtheiq/view/screen/login/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        onGenerateRoute: AppRouter().appRouterGenerator,
        builder: (context, child) => Theme(
            data: ThemeConfig.change(context, AppTheme.dark),
            child: Container(child: child)),
        home: LoginScreen());
  }
}
