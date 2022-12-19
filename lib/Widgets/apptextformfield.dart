import 'package:flutter/material.dart';

import '../Constants/colors.dart';
import '../Settings/style.dart';

class AppTextFormField extends StatelessWidget {
  String hintText;
  TextInputType? keyboardtype;
  Widget? prefixIcon;
  Widget? suffixIcon;
  bool? obscureText;
  bool? enabled;
  int? maxLines;
  AppTextFormField(this.hintText,
      {this.keyboardtype = TextInputType.text,
      this.prefixIcon = const Text(""),
      this.suffixIcon = const Text(""),
      this.obscureText = false,
      this.enabled = true,
      this.maxLines = 1});

  @override
  Widget build(BuildContext context) {
    return buildTextFormField(hintText,
        keyboardtype: keyboardtype,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        obscureText: obscureText,
        maxlines: maxLines,
        enabled: enabled);
  }

  static Widget buildTextFormField(String hintText,
      {TextInputType? keyboardtype = TextInputType.text,
      Widget? prefixIcon = const Text(""),
      Widget? suffixIcon = const Text(""),
      bool? obscureText = false,
      bool? enabled = true,
      int? maxlines = 1}) {
    Widget textFormField = Container(
      height: maxlines! > 1 ? 120 : 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.secondColor),
      child: Row(
        textDirection: TextDirection.rtl,
        children: [
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: TextFormField(
              keyboardType: keyboardtype!,
              enabled: enabled,
              obscureText: obscureText!,
              textAlign: TextAlign.center,
              textDirection: TextDirection.rtl,
              maxLines: maxlines,
              decoration: (prefixIcon != null || suffixIcon != null)
                  ? InputDecoration(
                      prefixIcon: prefixIcon,
                      suffixIcon: suffixIcon,
                      constraints:
                          const BoxConstraints(maxHeight: 50, maxWidth: 200),
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: -10),
                      fillColor: AppColors.textBackgroundColor,
                      filled: true,
                      border: InputBorder.none,
                      hintText: hintText,
                      hintMaxLines: maxlines,
                      hintStyle: const TextStyle(
                          fontSize: 16,
                          color: AppColors.textColor1,
                          fontFamily: AppStyle.appFontFamily))
                  : InputDecoration(
                      // prefixIcon: prefixIcon,
                      // suffixIcon: suffixIcon,
                      constraints:
                          const BoxConstraints(maxHeight: 50, maxWidth: 200),
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: -10),
                      fillColor: AppColors.textBackgroundColor,
                      filled: true,
                      border: InputBorder.none,
                      hintText: hintText,
                      hintMaxLines: maxlines,
                      hintStyle: const TextStyle(
                          fontSize: 16,
                          color: AppColors.textColor1,
                          fontFamily: AppStyle.appFontFamily)),
            ),
          ),
          const SizedBox(
            width: 10,
          )
        ],
      ),
    );
    // if (prefixIcon != null) {
    //   textFormField = Container(
    //     decoration: BoxDecoration(
    //         borderRadius: BorderRadius.circular(10),
    //         color: AppColors.secondColor),
    //     child: Row(
    //       textDirection: TextDirection.rtl,
    //       children: [
    //         const SizedBox(
    //           width: 10,
    //         ),
    //         Expanded(
    //           child: TextFormField(
    //             keyboardType: keyboardtype,
    //             enabled: enabled,
    //             obscureText: obscureText,
    //             textAlign: TextAlign.center,
    //             textDirection: TextDirection.rtl,
    //             decoration: InputDecoration(
    //                 prefixIcon: prefixIcon,
    //                 constraints:
    //                     const BoxConstraints(maxHeight: 50, maxWidth: 90),
    //                 contentPadding: const EdgeInsets.only(right: 40),
    //                 fillColor: AppColors.textBackgroundColor,
    //                 filled: true,
    //                 border: InputBorder.none,
    //                 hintText: hintText,
    //                 hintStyle: const TextStyle(
    //                     color: AppColors.textColor1,
    //                     fontFamily: AppStyle.appFontFamily)),
    //           ),
    //         ),
    //         const SizedBox(
    //           width: 10,
    //         )
    //       ],
    //     ),
    //   );
    // }
    return textFormField;
  }
}
