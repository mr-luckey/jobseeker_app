import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobseeker_app/Constants/fontSize.dart';
import 'package:jobseeker_app/UI/Widgets/Buttons/Button.dart';
import 'package:jobseeker_app/UI/Widgets/TextFields/TtextFields.dart';

class CinfoScreen extends StatelessWidget {
  const CinfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Text(
              'Company Information',
              style: TitleStyle,
            ),
          ),
          TsimpleField(
              hintText: 'Your company name',
              heading: 'Company Name',
              height: height * .15,
              width: width * 0.9),
          TsimpleField(
              hintText: 'Company details',
              heading: 'Company Description',
              height: height * .15,
              width: width * 0.9),
          TsimpleField(
              hintText: 'http://',
              heading: 'Company Website',
              height: height * .15,
              width: width * 0.9),
          TreadonlyField(
              hintText: 'Your Locations',
              heading: 'Location',
              height: height * .15,
              width: width * 0.9,
              icon: Icons.location_on_outlined,
              onTap: () {}),
          TsimpleField(
              hintText: 'Industry',
              heading: 'Industry',
              height: height * .15,
              width: width * 0.9),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TbackBtn(
                  title: 'Back', height: height * 0.062, width: width * 0.4),
              TIconBtn(
                  iconData: Icons.arrow_forward,
                  ontap: () {
                    Get.toNamed('/companyContact');
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
    );
  }
}
