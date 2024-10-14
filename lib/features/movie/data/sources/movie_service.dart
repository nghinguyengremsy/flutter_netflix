import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../../../core/config/config.dart';
import '../../../../core/network/network.dart';

abstract class MovieService {
  Future<Either> getTrendingMovies();
}

class MovieServiceImpl extends MovieService {
  @override
  Future<Either> getTrendingMovies() async {
    try {
      final res = await GetIt.I<DioClient>().get(ApiUrl.trendingMovies);
      return Right(res.data);
    } on DioException catch (e) {
      return Left(e.response!.data['message']);
    }
  }
}
