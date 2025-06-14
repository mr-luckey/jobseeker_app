import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobseeker_app/Constants/colors.dart';
import 'package:jobseeker_app/UI/Widgets/Buttons/Button.dart';

class PannelSelection extends StatefulWidget {
  const PannelSelection({Key? key}) : super(key: key);

  @override
  State<PannelSelection> createState() => _PannelSelectionState();
}

class _PannelSelectionState extends State<PannelSelection> {
  int? selectedIndex;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.06),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: height * 0.03),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Row(
                  //   children: [
                  //     Icon(Icons.diamond,
                  //         color: Colors.black, size: width * 0.07),
                  //     SizedBox(width: 8),
                  //     Text(
                  //       'workscout',
                  //       style: TextStyle(
                  //         fontWeight: FontWeight.bold,
                  //         fontSize: width * 0.055,
                  //         color: Colors.black,
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  // TextButton(
                  //   onPressed: () {},
                  //   child: Row(
                  //     children: [
                  //       Text(
                  //         'Skip',
                  //         style: TextStyle(
                  //           color: Colors.grey[700],
                  //           fontSize: width * 0.043,
                  //         ),
                  //       ),
                  //       Icon(Icons.arrow_forward,
                  //           color: Colors.grey[700], size: width * 0.045),
                  //     ],
                  //   ),
                  // ),
                ],
              ),
              SizedBox(height: height * 0.04),
              Text(
                'Are you currently looking for new oppertunities',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: width * 0.064,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: height * 0.04),
              _buildOptionCard(
                context,
                index: 0,
                title: 'I am looking for Job',
                description:
                    'Looking for job opportunities Internships , PartTime or FullTime Job ',
                selected: selectedIndex == 0,
              ),
              SizedBox(height: height * 0.02),
              _buildOptionCard(
                context,
                index: 1,
                title: 'I\'m Hiring',
                description:
                    'A company looking for talent to 10x your business ',
                selected: selectedIndex == 1,
              ),
              const Spacer(),
              TIconBtn(
                ontap: selectedIndex != null
                    ? () {
                        if (selectedIndex == 0) {
                          // Navigate to job seeker path
                          Get.toNamed('/SignUp');
                        } else {
                          // Navigate to employer path
                          Get.toNamed('/companyLogin');
                        }
                      }
                    : null,
                title: 'Next',
                height: height * 0.06,
                width: width,
                iconData: Icons.arrow_forward,
                isEnabled: selectedIndex != null,
              ),
              SizedBox(height: height * 0.03),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildOptionCard(BuildContext context,
      {required int index,
      required String title,
      required String description,
      required bool selected}) {
    final width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: selected ? primaryColor : Colors.grey.shade300,
            width: selected ? 2 : 1,
          ),
          boxShadow: [
            BoxShadow(
              color: primaryColor.withOpacity(0.05),
              blurRadius: 8,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: width * 0.045,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 8),
            Text(
              description,
              style: TextStyle(
                fontSize: width * 0.037,
                color: primaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
