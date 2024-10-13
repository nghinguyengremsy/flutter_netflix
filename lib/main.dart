import 'core/config/config.dart';
import 'package:flutter/material.dart';
import 'app.dart';
import 'injection.dart';

Future<void> main() async {
  //  Here we are calling the Dependency Injection
  await FlutterDependencyInjection.init();
  injectDependencies();
  //  This is the main app
  runApp(const RootApp());
}
