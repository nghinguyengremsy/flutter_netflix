import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../../domain/usecases/get_trending_movies_usecase.dart';
import 'trending_movies_state.dart';

class TrendingMoviesCubit extends Cubit<TrendingMoviesState> {
  TrendingMoviesCubit() : super(TrendingMoviesLoading());
  void getTrendingMovies() async {
    final rs = await GetIt.I<GetTrendingMoviesUsecase>().call("");
    rs.fold(
      (error) {
        emit(FailureLoadTrendingMovies(error));
      },
      (data) {
        emit(TrendingMoviesLoaded(data));
      },
    );
  }
}
