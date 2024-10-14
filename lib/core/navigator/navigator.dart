import 'package:flutter/material.dart';

import '../routes/names.dart';

class AppNavigator {
  static void pushReplacementNamed(BuildContext context, RouteName routeEnum) {
    Navigator.pushReplacementNamed(context, routeEnum.route);
  }

  static void pushNamed(BuildContext context, RouteName routeEnum) {
    Navigator.pushNamed(context, routeEnum.route);
  }

  static void pushNamedAsRoot(
      BuildContext context, RouteName routeEnum) {
    Navigator.pushNamedAndRemoveUntil(
        context,
        routeEnum.route,
        (Route<dynamic> route) => false);
  }
}
