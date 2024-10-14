library route_pages;

import 'package:flutter/material.dart';
import '../../features/auth/presentation/pages/sign_in.dart';
import '../../features/auth/presentation/pages/sign_up.dart';
import '../../features/splash/pages/splash.dart';
import '../../features/home/presentation/pages/pages.dart';
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
    } else if (settings?.name == RouteName.signin.route) {
      return PageRouteBuilder(
        pageBuilder: (BuildContext context, Animation<double> animation,
            Animation<double> secondaryAnimation) {
          return SignInPage();
        },
      );
    } else if (settings?.name == RouteName.signup.route) {
      return PageRouteBuilder(
        pageBuilder: (BuildContext context, Animation<double> animation,
            Animation<double> secondaryAnimation) {
          return SignupPage();
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
