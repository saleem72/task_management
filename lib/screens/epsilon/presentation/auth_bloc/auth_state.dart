part of 'auth_bloc.dart';

enum AuthStatus { login, home }

class AuthState extends Equatable {
  const AuthState({
    this.status = AuthStatus.login,
    this.isAuthoriezed = false,
  });
  final AuthStatus status;
  final bool isAuthoriezed;
  @override
  List<Object> get props => [status, isAuthoriezed];
}
