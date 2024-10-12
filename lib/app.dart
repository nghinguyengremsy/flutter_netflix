import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'core/routes/routes.dart';
import 'core/theme/theme.dart';
import 'features/splash/bloc/splash_cubit.dart';

class RootApp extends StatelessWidget {
  const RootApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SplashCubit()..appStarted(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: RouteName.splash.route,
        theme: AppTheme.appTheme,
        onGenerateRoute: AppRoute.generate,
      ),
    );
  }
}
