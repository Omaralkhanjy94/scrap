import 'package:flutter/material.dart';
import 'package:scrap/Constants/colors.dart';

class AppStyle {
  static const String appFontFamily = "halfabatika";
  static const TextStyle header = TextStyle(
      fontSize: 30,
      fontFamily: "halfabatika",
      fontWeight: FontWeight.w600,
      color: Color.fromARGB(202, 61, 59, 59));
  static const TextStyle subHeader = TextStyle(
      fontSize: 16, fontFamily: "halfabatika", color: AppColors.textColor1);
  static const TextStyle interCapture = TextStyle(
      fontSize: 20, fontFamily: "halfabatika", color: AppColors.textColor1);
}
