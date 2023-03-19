//

import 'package:flutter/material.dart';
import 'package:task_management/screens/epsilon/auth_controller.dart';
import 'package:task_management/screens/epsilon/splash_screen.dart';

class EpsilonScreen extends StatefulWidget {
  const EpsilonScreen({super.key});

  @override
  State<EpsilonScreen> createState() => _EpsilonScreenState();
}

class _EpsilonScreenState extends State<EpsilonScreen> {
  bool procced = false;
  @override
  Widget build(BuildContext context) {
    return procced
        ? const AuthController()
        : SplashScreen(
            onFinish: () {
              setState(() {
                procced = true;
              });
            },
          );
  }
}
