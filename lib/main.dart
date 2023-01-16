import 'package:flutter/material.dart';
import 'package:flutter_login_app/src/config/config.dart';
import 'package:flutter_login_app/src/utils/theme/theme.dart';
import 'package:get/get.dart';

void main() async {
  await AppConfig.initConfigs();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: const CircularProgressIndicator(),
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.rightToLeft,
      transitionDuration: const Duration(milliseconds: 500),
    );
  }
}