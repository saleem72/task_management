//

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_management/screens/epsilon/login_screen.dart';

import 'presentation/auth_bloc/auth_bloc.dart';

class AuthController extends StatelessWidget {
  const AuthController({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthBloc(),
      child: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) {
          return state.isAuthoriezed
              ? Container(
                  child: Text('Home'),
                )
              : const LoginScreen();
        },
      ),
    );
  }
}
