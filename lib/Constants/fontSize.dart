import 'package:flutter/material.dart';
import 'package:jobseeker_app/Constants/colors.dart';

class FontSize {
  // Extra small text (e.g., captions, labels)
  static const double label = 10.0;

  // Small text (e.g., body text, buttons)
  static const double button = 14.0;

  // Medium text (e.g., subheadings)
  static const double subheading = 16.0;

  // Large text (e.g., headings)
  static const double heading = 18.0;

  // Extra large text (e.g., main headings)
  static const double title = 20.0;

  // 2X large text (e.g., page titles)
  static const double pageTitle = 24.0;

  // 3X large text (e.g., hero text)
  static const double xxxl = 32.0;

  // 4X large text (e.g., splash screen text)
  static const double xxxxl = 40.0;
}

final TextStyle TitleStyle = TextStyle(
    color: Colors.black, fontSize: FontSize.xxxl, fontWeight: FontWeight.w900);
final TextStyle btnStyle = TextStyle(
  color: Colors.white,
  fontSize: FontSize.button,
);
final TextStyle BbtnStyle = TextStyle(
  color: primaryColor,
  fontSize: FontSize.button,
);
final TextStyle Theading = TextStyle(
    color: Colors.black,
    fontSize: FontSize.button,
    fontWeight: FontWeight.bold);
final TextStyle subheading = TextStyle();
final TextStyle label =
    TextStyle(color: Colors.black, fontSize: FontSize.label);
final TextStyle descripiton = TextStyle();
