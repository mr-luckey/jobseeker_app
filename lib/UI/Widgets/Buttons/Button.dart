import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobseeker_app/Constants/colors.dart';
import 'package:jobseeker_app/Constants/fontSize.dart';

class TButton extends StatelessWidget {
  final Title;
  final height;
  final width;
  GestureTapCallback? ontap;

  TButton(
      {super.key,
      required this.ontap,
      required this.Title,
      required this.height,
      required this.width});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5), color: primaryColor),
        child: Center(
          child: Text(
            Title,
            style: btnStyle,
          ),
        ),
      ),
    );
  }
}

class TIconBtn extends StatelessWidget {
  final title;
  final height;
  final width;
  final IconData iconData;
  final GestureTapCallback? ontap;
  final bool isEnabled;

  TIconBtn({
    super.key,
    required this.title,
    required this.height,
    required this.width,
    required this.ontap,
    required this.iconData,
    this.isEnabled = true,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: isEnabled ? ontap : null,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: isEnabled ? primaryColor : Colors.grey,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: btnStyle.copyWith(
                color: isEnabled ? Colors.white : Colors.white.withOpacity(0.7),
              ),
            ),
            SizedBox(width: 5),
            Icon(
              iconData,
              color: isEnabled ? Colors.white : Colors.white.withOpacity(0.7),
              size: 18,
            ),
          ],
        ),
      ),
    );
  }
}

class TbackBtn extends StatelessWidget {
  final title;
  final height;
  final width;

  TbackBtn(
      {super.key,
      required this.title,
      required this.height,
      required this.width});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.back();
      },
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            border: Border.all(color: primaryColor),
            borderRadius: BorderRadius.circular(5)),
        child: Center(
          child: Text(
            title,
            style: BbtnStyle,
          ),
        ),
      ),
    );
  }
}
