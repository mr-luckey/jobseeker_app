import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:jobseeker_app/Constants/colors.dart';
import 'package:jobseeker_app/Constants/fontSize.dart';
import 'package:jobseeker_app/UI/Views/Registration_Success/success_screen.dart';
import 'package:jobseeker_app/UI/Widgets/Buttons/Button.dart';
import 'package:jobseeker_app/UI/Widgets/TextFields/TtextFields.dart';

class CreateAccount extends StatelessWidget {
  CreateAccount({super.key});
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            Positioned.fill(
                child: Image.asset(
              'Assets/Images/Card.png',
              fit: BoxFit.fill,
            )),
            Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 40,
                ),
                Text(
                  "Your Tilte here",
                  style: TitleStyle,
                ),
                SizedBox(
                  height: height * 0.2,
                ),
                TsimpleField(
                    controller: nameController,
                    hintText: "Please enter your full name",
                    heading: 'Full Name',
                    height: height * .15,
                    width: width * 0.9),
                TsimpleField(
                    controller: emailController,
                    hintText: "Please enter your email",
                    heading: 'Email',
                    height: height * .15,
                    width: width * 0.9),
                TPasswordField(
                    controller: passwordController,
                    hintText: "Please enter your password",
                    heading: 'Password',
                    height: height * .15,
                    width: width * .9),
                TButton(
                    ontap: () {
                      Get.to(SuccessScreen(
                        userName: nameController.text,
                      ));
                    },
                    Title: 'SignUp',
                    height: height * 0.062,
                    width: width * .8)
              ],
            )
          ],
        ));
  }
}
