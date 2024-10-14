import 'package:dartz/dartz.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../models/signin_req_params.dart';
import '../models/signup_req_params.dart';
import '../sources/auth_api_service.dart';
import '../../domain/repositories/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthApiService _authApiService;
  AuthRepositoryImpl(this._authApiService);

  @override
  Future<Either> signUp(SignupReqParams params) async {
    final rs = await _authApiService.signUp(params);
    return rs.fold(
      (error) => Left(error),
      (data) async {
        final store = await SharedPreferences.getInstance();
        store.setString('token', data?['user']?['token'] ?? '');
        return Right(data);
      },
    );
  }

  @override
  Future<Either> signIn(SigninReqParams params) async {
    final rs = await _authApiService.signIn(params);
    return rs.fold(
      (error) => Left(error),
      (data) async {
        final store = await SharedPreferences.getInstance();
        store.setString('token', data?['user']?['token'] ?? '');
        return Right(data);
      },
    );
  }

  @override
  Future<bool> isLoggedIn() async {
    final store = await SharedPreferences.getInstance();
    final token = store.getString('token');
    return token != null;
  }

  // ... example ...
  //
  // Future<User> getUser(String userId) async {
  //     return remoteDataSource.getUser(userId);
  //   }
  // ...
}
