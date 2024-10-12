import 'core/config/config.dart';
import 'package:flutter/material.dart';
import 'app.dart';

Future<void> main() async {
  //  Here we are calling the Dependency Injection
  await FlutterDependencyInjection.init();
  //  This is the main app
  runApp(const RootApp());
}
