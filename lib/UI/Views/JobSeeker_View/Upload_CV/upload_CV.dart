import 'package:flutter/material.dart';
import 'package:jobseeker_app/Constants/fontSize.dart';
import 'package:jobseeker_app/UI/Widgets/Buttons/Button.dart';
import 'package:jobseeker_app/UI/Widgets/TextFields/TtextFields.dart';

class UploadCv extends StatelessWidget {
  const UploadCv({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Text(
              'Upload you CV',
              style: TitleStyle,
            ),
          ),
          TreadonlyField(
              hintText: 'Upload you CV here',
              heading: 'CV',
              height: height * .15,
              width: width * 0.9,
              icon: Icons.add_circle,
              onTap: () {}),
          TsimpleField(
              hintText: 'URL Links',
              heading: 'Portfolio (optional)',
              height: height * 0.15,
              width: width * .9),
          TButton(
              ontap: () {},
              Title: 'Get Started',
              height: height * 0.062,
              width: width * 0.8)
        ],
      ),
    );
  }
}
