import 'dart:async';

import '../../../../core/usecases/usecases.dart';
import '../repositories/auth_repository.dart';

class IsLoggedInUsecase extends UseCase<bool, void> {
  IsLoggedInUsecase(this._repo);

  final AuthRepository _repo;

  @override
  FutureOr<bool> call(_) => _repo.isLoggedIn();
}
