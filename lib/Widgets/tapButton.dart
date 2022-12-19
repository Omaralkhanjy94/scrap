import 'package:flutter/material.dart';
import 'package:scrap/Constants/colors.dart';
import 'package:scrap/Settings/style.dart';

class AppTabButton extends StatelessWidget {
  String? img;
  String? title;
  AppTabButton({Key? key, required this.title, this.img}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: AppColors.secondColor,
          ),
          child: Row(
            textDirection: TextDirection.rtl,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                img!,
                height: 12,
                width: 12,
              ),
              Text(
                title!,
                style: const TextStyle(
                    color: AppColors.textColor1,
                    fontFamily: AppStyle.appFontFamily,
                    fontSize: 12),
              )
            ],
          ),
        ));
  }
}
