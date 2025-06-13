import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobseeker_app/Constants/colors.dart';
import 'package:jobseeker_app/Constants/fontSize.dart';
import 'package:jobseeker_app/UI/Widgets/Buttons/Button.dart';
import 'package:jobseeker_app/UI/Widgets/TextFields/TtextFields.dart';

class SuccessScreen extends StatelessWidget {
  final String userName;

  const SuccessScreen({Key? key, this.userName = 'adam'}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.06),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Checkmark in a circle
                Container(
                  width: width * 0.37, // ~140/375
                  height: width * 0.37,
                  decoration: BoxDecoration(
                    color: const Color(0xFFEFF2F5),
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Icon(
                      Icons.check,
                      size: width * 0.17, // ~64/375
                      color: Color(0xFF4A5A6A),
                    ),
                  ),
                ),
                SizedBox(height: height * 0.04),
                // Hi Adam
                Text(
                  'Hi $userName',
                  style: TextStyle(
                    fontSize: width * 0.064, // ~24/375
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: height * 0.01),
                // Registration successful
                Text(
                  'Your Registration successfull',
                  style: TextStyle(
                    fontSize: width * 0.043, // ~16/375
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: height * 0.02),
                // Description
                Text(
                  'Unlock job offers by completing your profile and let 450+ companies approach you!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: width * 0.037, // ~14/375
                    color: Colors.grey[600],
                  ),
                ),
                SizedBox(height: height * 0.04),
                TButton(
                    ontap: () {
                      Get.toNamed('/selection');
                    },
                    Title: 'Continue',
                    height: height * 0.06,
                    width: width)
                // Continue button
                // SizedBox(
                //   width: width,
                //   height: height * 0.06, // ~48/812
                //   child: ElevatedButton(
                //     style: ElevatedButton.styleFrom(
                //       backgroundColor: Color(0xFF4A5A6A),
                //       shape: RoundedRectangleBorder(
                //         borderRadius: BorderRadius.circular(6),
                //       ),
                //     ),
                //     onPressed: () {
                //       // TODO: Navigate to the next screen
                //       Navigator.of(context).pop();
                //     },
                //     child: Text(
                //       'Continue',
                //       style: TextStyle(
                //         color: Colors.white,
                //         fontSize: width * 0.043, // ~16/375
                //       ),
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
