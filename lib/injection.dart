import 'package:get_it/get_it.dart';

import 'core/network/network.dart';
import 'features/auth/data/repositories/auth_repository.dart';
import 'features/auth/data/sources/auth_api_service.dart';
import 'features/auth/domain/repositories/repositories.dart';
import 'features/auth/domain/usecases/signin_usecase.dart';
import 'features/auth/domain/usecases/signup_usecase.dart';

void injectDependencies() {
  final s1 = GetIt.I;

  s1.registerLazySingleton<DioClient>(() => DioClient());

  /// Services
  s1.registerLazySingleton<AuthApiService>(() => AuthApiServiceImpl());

  /// Repositories
  s1.registerLazySingleton<AuthRepository>(() => AuthRepositoryImpl(s1()));

  /// Usecases
  s1.registerLazySingleton<SignupUsecase>(() => SignupUsecase(s1()));

  s1.registerLazySingleton<SigninUsecase>(() => SigninUsecase(s1()));

}
