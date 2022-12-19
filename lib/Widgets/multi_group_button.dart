import 'package:flutter/material.dart';

import '../Constants/colors.dart';
import '../Settings/style.dart';

class MultiGroupButton extends StatelessWidget {
  final List<String?>? imgs;
  String? title;
  bool? activated;
  MultiGroupButton({
    Key? key,
    this.imgs,
    this.title,
    this.activated,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Expanded(
        child: Column(
          children: [
            Container(
              width: 150,
              height: 50,
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: activated == true
                    ? AppColors.primaryColor
                    : AppColors.secondColor,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: imgs!
                    .map((img) => Image.asset(
                          img!,
                          width: 50,
                          height: 50,
                        ))
                    .toList(),
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
