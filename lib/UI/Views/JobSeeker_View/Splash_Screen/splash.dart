import 'package:flutter/material.dart';
import 'package:jobseeker_app/Constants/theme.dart';
import 'package:jobseeker_app/UI/Widgets/Buttons/Button.dart';
import 'package:jobseeker_app/UI/Widgets/TextFields/TtextFields.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});
  final TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // final height = MediaQuery.of(context).size.height;
    // final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme.lightTheme.primaryColor,
      ),
      body: Center(
          child: TDescriptionField(
        heading: "Description",
        hintText: "Enter your description here...",
        height: 200, // Adjust based on your needs
        width: double.infinity, // Or specific width
        controller: password, // Optional
        maxLines: 5, // Optional, defaults to 5
      )),
    );
  }
}
