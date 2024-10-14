import 'package:dartz/dartz.dart';

import '../models/signin_req_params.dart';
import '../models/signup_req_params.dart';
import '../sources/auth_api_service.dart';
import '../../domain/repositories/repositories.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthApiService _authApiService;
  AuthRepositoryImpl(this._authApiService);

  @override
  Future<Either> signUp(SignupReqParams params) {
    return _authApiService.signUp(params);
  }

  @override
  Future<Either> signIn(SigninReqParams params) {
    return _authApiService.signIn(params);
  }

  // ... example ...
  //
  // Future<User> getUser(String userId) async {
  //     return remoteDataSource.getUser(userId);
  //   }
  // ...
}
