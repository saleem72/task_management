//

import 'package:dartz/dartz.dart';
import 'package:task_management/screens/epsilon/core/failure/failure.dart';

abstract class LoginRepository {
  Future<Either<Failure, String>> login(
      {required String email, required String password});
}
