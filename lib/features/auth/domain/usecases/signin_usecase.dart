import 'dart:async';

import 'package:dartz/dartz.dart';

import '../../../../core/usecases/usecases.dart';
import '../../data/models/signin_req_params.dart';
import '../repositories/repositories.dart';

class SigninUsecase extends UseCase<Either, SigninReqParams> {
  SigninUsecase(this._repo);

  final AuthRepository _repo;

  @override
  FutureOr<Either> call(SigninReqParams params) => _repo.signIn(params);
}
