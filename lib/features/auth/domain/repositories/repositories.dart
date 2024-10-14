import 'package:dartz/dartz.dart';

import '../../data/models/signin_req_params.dart';
import '../../data/models/signup_req_params.dart';

abstract class AuthRepository {
  Future<Either> signUp(SignupReqParams params);
  Future<Either> signIn(SigninReqParams params);

}
