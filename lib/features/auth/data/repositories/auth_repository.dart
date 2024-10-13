import 'package:dartz/dartz.dart';

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

  // ... example ...
  //
  // Future<User> getUser(String userId) async {
  //     return remoteDataSource.getUser(userId);
  //   }
  // ...
}
