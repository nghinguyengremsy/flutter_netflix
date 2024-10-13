import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../../../core/config/config.dart';
import '../../../../core/network/network.dart';
import '../models/signup_req_params.dart';

abstract class AuthApiService {
  Future<Either> signUp(SignupReqParams params);
}

class AuthApiServiceImpl extends AuthApiService {
  @override
  Future<Either> signUp(SignupReqParams params) async {
    try {
      final res = await GetIt.I<DioClient>().post(
        ApiUrl.signUp,
        data: params.toMap(),
      );
      return Right(res.data);
    } on DioException catch (e) {
      return Left(e.response!.data['message']);
    }
  }
}
