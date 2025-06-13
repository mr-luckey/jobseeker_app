import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobseeker_app/Constants/fontSize.dart';
import 'package:jobseeker_app/UI/Views/Registration_Success/success_screen.dart';
import 'package:jobseeker_app/UI/Widgets/Buttons/Button.dart';
import 'package:jobseeker_app/UI/Widgets/TextFields/TtextFields.dart';

class ProfessionalProfileScreen extends StatelessWidget {
  ProfessionalProfileScreen({super.key});
  final TextEditingController workExpController = TextEditingController();
  final TextEditingController profSumController = TextEditingController();

  final TextEditingController locationController = TextEditingController();
  final TextEditingController profProController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Column(
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
                height: height * 0.1,
              ),
              TsimpleField(
                  controller: profProController,
                  hintText: "e.g UI/UX Designer, Project Manager",
                  heading: 'Professional Profile',
                  height: height * .15,
                  width: width * 0.9),
              TDescriptionField(
                  controller: profSumController,
                  hintText: "Your profile summary",
                  heading: 'Profile Summary',
                  height: height * .24,
                  width: width * 0.9),
              // SizedBox(
              //   height: 90,
              // ),
              TsimpleField(
                  controller: workExpController,
                  hintText: "Your Experience",
                  heading: 'Work Experience',
                  height: height * .15,
                  width: width * 0.9),
              TreadonlyField(
                  hintText: 'Your Location',
                  heading: 'Locatation',
                  height: height * .15,
                  width: width * 0.9,
                  icon: Icons.location_on_outlined,
                  onTap: () {}),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TbackBtn(
                      title: 'Back',
                      height: height * 0.062,
                      width: width * 0.4),
                  TIconBtn(
                      iconData: Icons.arrow_forward,
                      ontap: () {
                        // Get.to(SuccessScreen(
                        //   userName: nameController.text,
                        // ));
                      },
                      title: 'Next',
                      height: height * 0.062,
                      width: width * .4)
                ],
              )
            ],
          ),
        ));
  }
}
