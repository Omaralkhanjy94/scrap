import 'package:flutter/material.dart';
import 'package:scrap/Constants/colors.dart';
import 'package:scrap/Settings/style.dart';

class Product extends StatelessWidget {
  Image? img;
  String? title;
  String? status1;
  String? status2;
  String? note;
  Color? backgroundColor;
  Product(
      {Key? key,
      this.img,
      this.title,
      this.status1,
      this.status2,
      this.note,
      this.backgroundColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor!,
      child: Row(
        textDirection: TextDirection.rtl,
        children: [
          //#1 image
          Expanded(child: img!),
          //#2
          Expanded(
            child: Column(
              textDirection: TextDirection.rtl,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title!,
                  style: const TextStyle(
                      fontFamily: AppStyle.appFontFamily,
                      fontSize: 10,
                      color: AppColors.textColor1),
                ),
                Column(
                  textDirection: TextDirection.rtl,
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      //status1 للبيع
                      status1!,
                      style: const TextStyle(
                        fontFamily: AppStyle.appFontFamily,
                        fontSize: 10,
                        color: AppColors.textColor2,
                      ),
                    ),
                    //reatched
                    Text(
                      status2!,
                      style: const TextStyle(
                          fontFamily: AppStyle.appFontFamily,
                          fontSize: 10,
                          color: AppColors.textColor2),
                    ),
                  ],
                )
              ],
            ),
          ),
          //#3
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  note!,
                  style: const TextStyle(
                      fontFamily: AppStyle.appFontFamily,
                      fontSize: 10,
                      color: AppColors.primaryColor),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
