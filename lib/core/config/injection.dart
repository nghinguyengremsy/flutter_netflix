library dependency_injection;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FlutterDependencyInjection {
  static Future<void> init() async {
    WidgetsFlutterBinding.ensureInitialized();
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  }
}
