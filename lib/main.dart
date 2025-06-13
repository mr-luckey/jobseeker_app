import 'package:flutter/material.dart';
import 'package:jobseeker_app/Constants/theme.dart';
import 'package:jobseeker_app/UI/Splash_Screen/splash.dart';
// import 'package:your_app/Constants/theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      home: SplashScreen(),
    );
  }
}
