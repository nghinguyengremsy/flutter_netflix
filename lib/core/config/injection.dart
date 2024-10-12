library dependency_injection;

import 'package:flutter/material.dart';

class FlutterDependencyInjection {
  static Future<void> init() async {
    WidgetsFlutterBinding.ensureInitialized();
  }
}
