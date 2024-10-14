import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../../auth/domain/usecases/is_logged_in_usecase.dart';
import 'splash_state.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(SplashState.displaySplash);
  void appStarted() async {
    await Future.delayed(const Duration(seconds: 2));
    final isLoggedIn = await GetIt.I<IsLoggedInUsecase>().call('');
    if (isLoggedIn) {
      emit(SplashState.authenticated);
    } else {
      emit(SplashState.unauthenticated);

    }
  }
}
