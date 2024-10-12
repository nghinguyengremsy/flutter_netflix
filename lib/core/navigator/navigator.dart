import 'package:flutter/material.dart';

import '../routes/names.dart';

class AppNavigator {
  static void pushReplacementNamed(BuildContext context, RouteName routeEnum) {
    Navigator.pushReplacementNamed(context, routeEnum.route);
  }

  static void push(BuildContext context, RouteName routeEnum) {
    Navigator.pushNamed(context, routeEnum.route);
  }

  static void pushAndRemove(BuildContext context, Widget widget) {
    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => widget),
        (Route<dynamic> route) => false);
  }
}
