import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';
import 'package:jobseeker_app/Constants/fontSize.dart';
import 'package:jobseeker_app/UI/Widgets/Buttons/Button.dart';
import 'package:jobseeker_app/UI/Widgets/TextFields/TtextFields.dart';

class Login extends StatelessWidget {
  Login({super.key});
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

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
              // color: Colors.yellow,
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
                  height: height * 0.4,
                ),
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
                      Get.toNamed('/SignUp');
                    },
                    Title: 'Login',
                    height: height * 0.062,
                    width: width * .8)
              ],
            )
          ],
        ));
  }
}
