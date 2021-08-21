import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tawtheiq/view/widget/bottom_navigation/bottom_navigation.dart';
import 'package:tawtheiq/view/widget/custom_top_bar.dart';

mixin MainContent<T extends StatefulWidget> on State<T> {
  Widget body();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Theme.of(context).colorScheme.background,
        appBar: CustomTopBar(),
        bottomNavigationBar: CustomBottomNavigation(),
        body: body());
  }
}
