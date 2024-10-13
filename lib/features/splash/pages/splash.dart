import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/assets/assets.dart';
import '../../../core/navigator/navigator.dart';
import '../../../core/routes/names.dart';
import '../bloc/splash_cubit.dart';
import '../bloc/splash_state.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<SplashCubit, SplashState>(
        listener: (BuildContext context, SplashState state) {
          if (state == SplashState.authenticated) {
            AppNavigator.pushReplacementNamed(context, RouteName.home);
          } else if (state == SplashState.unauthenticated) {
            AppNavigator.pushReplacementNamed(context, RouteName.signin);
          }
        },
        child: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AppImages.splashBackground),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    const Color(0xff1a1b20).withOpacity(0),
                    const Color(0xff1a1b20),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
