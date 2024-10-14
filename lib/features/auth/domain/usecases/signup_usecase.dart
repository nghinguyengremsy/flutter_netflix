import 'dart:async';

import 'package:dartz/dartz.dart';

import '../../../../core/usecases/usecases.dart';
import '../../data/models/signup_req_params.dart';
import '../repositories/repositories.dart';

class SignupUsecase extends UseCase<Either, SignupReqParams> {
  final AuthRepository _repository;

  SignupUsecase(this._repository);

  @override
  FutureOr<Either> call(SignupReqParams params) {
    return _repository.signUp(params);
  }

  // Future<User> execute(String userId) async {
  //   return userRepository.getUser(userId);
  // }
}
