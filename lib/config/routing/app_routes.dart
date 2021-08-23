import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:tawtheiq/view/screen/login/login_screen.dart';
import 'package:tawtheiq/view/screen/main_screen/main_screen.dart';

class AppRoutes {
  static final List<AppRoute> appRoutes = [
    AppRoute(
      '/',
      Handler(
          handlerFunc: (context, Map<String, List<String>> params) =>
              LoginScreen()),
    ),
    AppRoute(
      '/main',
      Handler(
          handlerFunc: (context, Map<String, List<String>> params) =>
              MainScreen()),
    ),
  ];

  // static Widget _routeAuthHandler(
  //   BuildContext context,
  //   Widget defaultPage, {
  //   Widget ?onAdmin,
  //   Widget ?onBidder,
  //   Widget ?onPoster,
  //   Widget ?onNoUser,
  // }) {
  //   return StreamBuilder<User>(
  //       stream: AuthService().currentUserStream,
  //       builder: (context, snapshot) {
  //         if (snapshot.hasData) {
  //           switch (snapshot.data.userRole) {
  //             case UserRole.Admin:
  //               return onAdmin ?? defaultPage;
  //             case UserRole.Bidder:
  //               return onBidder ?? defaultPage;
  //             case UserRole.Poster:
  //               return onPoster ?? defaultPage;
  //             default:
  //               return defaultPage;
  //           }
  //         } else {
  //           return onNoUser ?? DashboardScreen();
  //         }
  //       });
  // }
}
