import 'package:flutter/material.dart';
// import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';
import 'package:jobseeker_app/Constants/theme.dart';
import 'package:jobseeker_app/UI/Views/Company_View/Company_Contact/company_Contact.dart';
import 'package:jobseeker_app/UI/Views/Company_View/Company_Info/cInfo_Screen.dart';
import 'package:jobseeker_app/UI/Views/Company_View/Company_Login/company_Login.dart';
import 'package:jobseeker_app/UI/Views/JobSeeker_View/CreateAccount_Screen/Create_Account.dart';
import 'package:jobseeker_app/UI/Views/JobSeeker_View/Login_Screen/Login.dart';
import 'package:jobseeker_app/UI/Views/Pannel%20Selection/pannel_Selection.dart';
import 'package:jobseeker_app/UI/Views/JobSeeker_View/PersonalInfo/Personal_Info_Screen.dart';
import 'package:jobseeker_app/UI/Views/JobSeeker_View/Professional_Profile/professional_profile.dart';
import 'package:jobseeker_app/UI/Views/JobSeeker_View/Registration_Success/success_screen.dart';
// import 'package:jobseeker_app/UI/Views/Selection_Screen/Selection.dart';
import 'package:jobseeker_app/UI/Views/JobSeeker_View/Selection_Screen/selection_screen.dart';
import 'package:jobseeker_app/UI/Views/JobSeeker_View/Splash_Screen/splash.dart';
import 'package:jobseeker_app/UI/Views/JobSeeker_View/Upload_CV/upload_CV.dart';
// import 'package:your_app/Constants/theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/panelSelection',
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      // darkTheme: AppTheme.darkTheme,
      routes: {
        '/': (context) => Login(),
        '/panelSelection': (context) => PannelSelection(),
        '/seekersplash': (context) => SplashScreen(),
        '/SignUp': (context) => CreateAccount(),
        '/success': (context) => SuccessScreen(),
        '/selection': (context) => SelectionScreen(),
        '/personalInfo': (context) => PersonalInfoScreen(),
        '/profesionalInfo': (context) => ProfessionalProfileScreen(),
        '/uploadCv': (context) => UploadCv(),
        '/CompanyInfo': (context) => CinfoScreen(),
        '/companyContact': (context) => CompanyContact(),
        '/companyLogin': (context) => CompanyLogin(),
      },
    );
  }
}
