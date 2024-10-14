import 'package:get_it/get_it.dart';

import 'core/network/network.dart';
import 'features/auth/data/repositories/auth_repository.dart';
import 'features/auth/data/sources/auth_service.dart';
import 'features/auth/domain/repositories/auth_repository.dart';
import 'features/auth/domain/usecases/is_logged_in_usecase.dart';
import 'features/auth/domain/usecases/signin_usecase.dart';
import 'features/auth/domain/usecases/signup_usecase.dart';
import 'features/movie/data/repositories/movie_repository.dart';
import 'features/movie/data/sources/movie_service.dart';
import 'features/movie/domain/repositories/movie_repository.dart';
import 'features/movie/domain/usecases/get_trending_movies_usecase.dart';

void injectDependencies() {
  final s1 = GetIt.I;

  s1.registerLazySingleton<DioClient>(() => DioClient());

  /// Services
  s1.registerLazySingleton<AuthService>(() => AuthServiceImpl());
  s1.registerLazySingleton<MovieService>(() => MovieServiceImpl());

  /// Repositories
  s1.registerLazySingleton<AuthRepository>(() => AuthRepositoryImpl(s1()));
  s1.registerLazySingleton<MovieRepository>(() => MovieRepositoryImpl(s1()));

  /// Usecases
  s1.registerLazySingleton<SignupUsecase>(() => SignupUsecase(s1()));

  s1.registerLazySingleton<SigninUsecase>(() => SigninUsecase(s1()));
 
  s1.registerLazySingleton<IsLoggedInUsecase>(() => IsLoggedInUsecase(s1()));

  s1.registerLazySingleton<GetTrendingMoviesUsecase>(
      () => GetTrendingMoviesUsecase(s1()));



}
