import 'package:dartz/dartz.dart';

import '../../data/models/signup_req_params.dart';

abstract class AuthRepository {
  // Future<User> getUser(String userId);
  Future<Either> signUp(SignupReqParams params);
}
