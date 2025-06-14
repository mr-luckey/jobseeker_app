import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobseeker_app/Constants/fontSize.dart';
import 'package:jobseeker_app/UI/Widgets/Buttons/Button.dart';
import 'package:jobseeker_app/UI/Widgets/TextFields/TtextFields.dart';

class CompanyContact extends StatelessWidget {
  const CompanyContact({super.key});

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
              'Cotact Information',
              style: TitleStyle,
            ),
          ),
          TsimpleField(
              hintText: 'Contact',
              heading: 'Contact Name',
              height: height * .15,
              width: width * 0.9),
          TsimpleField(
              hintText: 'Your Email here',
              heading: 'Contact Email',
              height: height * .15,
              width: width * 0.9),
          TsimpleField(
              hintText: 'Your Number',
              heading: 'Phone',
              height: height * .15,
              width: width * 0.9),
          TsimpleField(
              hintText: 'http://',
              heading: 'Social Media Link',
              height: height * .15,
              width: width * 0.9),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TbackBtn(
                  title: 'Back', height: height * 0.062, width: width * 0.4),
              TIconBtn(
                  iconData: Icons.arrow_forward,
                  ontap: () {},
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
