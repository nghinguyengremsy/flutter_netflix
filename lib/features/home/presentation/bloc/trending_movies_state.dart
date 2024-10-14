import '../../../movie/domain/entities/movie.dart';

abstract class TrendingMoviesState {
  const TrendingMoviesState();
}

class TrendingMoviesLoading extends TrendingMoviesState {}

class TrendingMoviesLoaded extends TrendingMoviesState {
  const TrendingMoviesLoaded(this.movies);
  final List<MovieEntity> movies;
}

class FailureLoadTrendingMovies extends TrendingMoviesState {
  const FailureLoadTrendingMovies(this.errorMessage);
  final String errorMessage;
}
