//

import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:task_management/screens/epsilon/core/failure/failure.dart';
import 'package:task_management/screens/epsilon/core/use_case/usecase.dart';
import 'package:task_management/screens/epsilon/domain/repository/login_repository.dart';

class LoginUser extends Usecase<String, LoginParams> {
  final LoginRepository repository;

  LoginUser({required this.repository});

  @override
  Future<Either<Failure, String>> call(LoginParams params) async {
    return await repository.login(
        email: params.email, password: params.password);
  }
}

class LoginParams extends Equatable {
  final String email;
  final String password;

  const LoginParams({required this.email, required this.password});

  @override
  List<Object?> get props => [email, password];
}
