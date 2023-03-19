import 'package:dartz/dartz.dart';
import 'package:task_management/screens/epsilon/core/failure/failure.dart';

abstract class Usecase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}
