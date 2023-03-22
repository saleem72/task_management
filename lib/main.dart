import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:task_management/screens/api_helper_screen/api_helper_screen.dart';

import 'screens/epsilon/epsilon_screen.dart';
import 'theme/color_schemes.g.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setStatusBarAndNavigationBarColor(ThemeMode.light);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: googleLightTheme,
      home: const ApiHelperScreen(),
      // home: BlocProvider(
      //   create: (context) => DataProviderBloc(),
      //   child: const ColrosScreen(),
      // ),
    );
  }
}

void setStatusBarAndNavigationBarColor(ThemeMode themeMode) {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness:
        themeMode == ThemeMode.light ? Brightness.dark : Brightness.light,
    systemNavigationBarIconBrightness:
        themeMode == ThemeMode.light ? Brightness.dark : Brightness.light,
    systemNavigationBarColor: const Color(0xffE8E8E8),
    systemNavigationBarDividerColor: Colors.transparent,
  ));
}
