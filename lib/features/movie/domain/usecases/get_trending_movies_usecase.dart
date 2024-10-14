import 'dart:async';

import 'package:dartz/dartz.dart';

import '../../../../core/usecases/usecases.dart';
import '../repositories/movie_repository.dart';

class GetTrendingMoviesUsecase extends UseCase<Either, void> {
  GetTrendingMoviesUsecase(this._repo);

  final MovieRepository _repo;

  @override
  FutureOr<Either> call(_) => _repo.getTrendingMovies();
}
