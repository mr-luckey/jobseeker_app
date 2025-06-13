import 'package:flutter/material.dart';
import 'package:jobseeker_app/Constants/theme.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme.lightTheme.primaryColor,
      ),
      body: Center(
        child: Text('Hello World!'),
      ),
    );
  }
}
