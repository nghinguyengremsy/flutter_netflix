library route_pages;

import 'package:flutter/material.dart';
import '../../features/auth/presentation/pages/pages.dart';
import '../../features/splash/pages/splash.dart';
import '../../src/features/home/presentation/pages/pages.dart';
import '../error/error.dart';
import 'routes.dart';

class AppRoute {
  static Route<dynamic> generate(RouteSettings? settings) {
    if (settings?.name == RouteName.splash.route) {
      return PageRouteBuilder(
        pageBuilder: (BuildContext context, Animation<double> animation,
            Animation<double> secondaryAnimation) {
          return const SplashPage();
        },
      );
    } else if (settings?.name == RouteName.auth.route) {
      return PageRouteBuilder(
        pageBuilder: (BuildContext context, Animation<double> animation,
            Animation<double> secondaryAnimation) {
          return const AuthPage();
        },
      );
    } else if (settings?.name == RouteName.home.route) {
      return PageRouteBuilder(
        pageBuilder: (BuildContext context, Animation<double> animation,
            Animation<double> secondaryAnimation) {
          return const HomePage();
        },
      );
    } else {
      return PageRouteBuilder(
        pageBuilder: (BuildContext context, Animation<double> animation,
            Animation<double> secondaryAnimation) {
          return const SplashPage();
        },
      );
    }
  }
}
