library usecases;

import 'dart:async';

abstract class UseCase<Type, Params> {
  FutureOr<Type> call(Params params);
}
