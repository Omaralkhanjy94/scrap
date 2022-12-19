import 'package:flutter/material.dart';

import '../Constants/colors.dart';
import '../Settings/style.dart';

class AppDropDown extends StatelessWidget {
  List<String?>? items;
  String hintText;
  TextEditingController controller;

  AppDropDown(this.items, this.hintText, this.controller, {super.key});

  @override
  Widget build(BuildContext context) {
    return buildDropDown(items, hintText, controller);
  }

  static Widget buildDropDown(
      List<String?>? items, String hintText, TextEditingController controller) {
    return Container(
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
              controller: controller,
              enabled: false,
              obscureText: false,
              textAlign: TextAlign.center,
              textDirection: TextDirection.rtl,
              decoration: InputDecoration(
                  constraints:
                      const BoxConstraints(maxHeight: 50, maxWidth: 90),
                  contentPadding: const EdgeInsets.only(right: 40),
                  fillColor: AppColors.textBackgroundColor,
                  filled: true,
                  border: InputBorder.none,
                  hintText: hintText,
                  hintStyle: const TextStyle(
                      color: AppColors.textColor1,
                      fontFamily: AppStyle.appFontFamily)),
            ),
          ),
          PopupMenuButton<String>(
            icon: const Icon(Icons.keyboard_arrow_down),
            onSelected: (String value) {
              controller.text = value;
            },
            itemBuilder: (BuildContext context) {
              return items!.map<PopupMenuItem<String>>((String? value) {
                return PopupMenuItem(value: value, child: Text(value!));
              }).toList();
            },
          ),
        ],
      ),
    );
  }
}
