import 'package:flutter/material.dart';
// import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';
import 'package:jobseeker_app/Constants/theme.dart';
import 'package:jobseeker_app/UI/Views/CreateAccount_Screen/Create_Account.dart';
import 'package:jobseeker_app/UI/Views/Login_Screen/Login.dart';
import 'package:jobseeker_app/UI/Views/PersonalInfo/Personal_Info_Screen.dart';
import 'package:jobseeker_app/UI/Views/Professional_Profile/professional_profile.dart';
import 'package:jobseeker_app/UI/Views/Registration_Success/success_screen.dart';
// import 'package:jobseeker_app/UI/Views/Selection_Screen/Selection.dart';
import 'package:jobseeker_app/UI/Views/Selection_Screen/selection_screen.dart';
import 'package:jobseeker_app/UI/Views/Splash_Screen/splash.dart';
// import 'package:your_app/Constants/theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      // darkTheme: AppTheme.darkTheme,
      routes: {
        '/': (context) => Login(),
        '/splash': (context) => SplashScreen(),
        '/SignUp': (context) => CreateAccount(),
        '/success': (context) => SuccessScreen(),
        '/selection': (context) => SelectionScreen(),
        '/personalInfo': (context) => PersonalInfoScreen(),
        '/profesionalInfo': (context) => ProfessionalProfileScreen(),
      },
    );
  }
}
