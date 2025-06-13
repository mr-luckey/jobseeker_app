import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobseeker_app/Constants/fontSize.dart';
import 'package:jobseeker_app/UI/Views/Registration_Success/success_screen.dart';
import 'package:jobseeker_app/UI/Widgets/Buttons/Button.dart';
import 'package:jobseeker_app/UI/Widgets/TextFields/TtextFields.dart';

class PersonalInfoScreen extends StatelessWidget {
  PersonalInfoScreen({super.key});
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();

  final TextEditingController locationController = TextEditingController();
  final TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            // Positioned.fill(
            //     child: Image.asset(
            //   'Assets/Images/Card.png',
            //   fit: BoxFit.fill,
            // )),
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
                TsimpleField(
                    controller: phoneController,
                    hintText: "Please phone number",
                    heading: 'Phone Number',
                    height: height * .15,
                    width: width * 0.9),
                TreadonlyField(
                    hintText: 'Your Location',
                    heading: 'Locatation',
                    height: height * .15,
                    width: width * 0.9,
                    icon: Icons.location_on_outlined,
                    onTap: () {}),
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
