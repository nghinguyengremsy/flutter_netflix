import 'package:dartz/dartz.dart';

import '../../mapper/movie_mapper.dart';
import '../models/movie.dart';
import '../sources/movie_service.dart';
import '../../domain/repositories/movie_repository.dart';

class MovieRepositoryImpl implements MovieRepository {
  final MovieService _movieApiService;
  MovieRepositoryImpl(this._movieApiService);

  @override
  Future<Either> getTrendingMovies() async {
    final rs = await _movieApiService.getTrendingMovies();
    return rs.fold((error) {
      return Left(error);
    }, (data) {
      final movies = List.from(data['content'])
          .map((e) => MovieMapper.toEntity(MovieModel.fromJson(e)))
          .toList();
      return Right(movies);
    });
  }
}
