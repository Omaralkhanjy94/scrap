import 'package:flutter/material.dart';

import '../Constants/colors.dart';
import '../Settings/style.dart';

class SingleGroupButton extends StatelessWidget {
  final String? img;
  String? title;
  bool? activated;
  SingleGroupButton(
      {super.key, required this.img, this.title = " ", this.activated = false});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Expanded(
        child: Column(
          children: [
            Container(
              width: 80,
              height: 50,
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: activated == true
                    ? AppColors.primaryColor
                    : AppColors.secondColor,
              ),
              child: Center(
                child: Image.asset(
                  img!,
                  width: 80,
                  height: 80,
                ),
              ),
            ),
            Text(
              title!,
              style: const TextStyle(
                  fontFamily: AppStyle.appFontFamily, fontSize: 12),
            )
          ],
        ),
      ),
    );
  }
}
