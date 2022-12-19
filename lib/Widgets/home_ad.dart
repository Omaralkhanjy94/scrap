import 'package:flutter/material.dart';
import 'package:scrap/Constants/colors.dart';
import 'package:scrap/Settings/style.dart';

class HomeAd extends StatelessWidget {
  final String? imgPath;
  final String? bigText;
  final String? smallText;
  final VoidCallback? readMoreButton;
  const HomeAd(
      {Key? key,
      required this.imgPath,
      this.readMoreButton,
      this.bigText = "",
      this.smallText = ""})
      : super(key: key);
  static const double containerHeight = 179.9;
  @override
  Widget build(BuildContext context) {
    final VoidCallback fm = readMoreButton!;
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
        height: containerHeight,
        width: 250,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
              image: Image.asset(imgPath!).image,
              fit: BoxFit.fill,
              opacity: 0.85),
        ),
        child: Column(
          textDirection: TextDirection.rtl,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const SizedBox(
              height: 10,
            ),
            Text(
              bigText!,
              textDirection: TextDirection.rtl,
              style: const TextStyle(
                  fontFamily: AppStyle.appFontFamily,
                  fontWeight: FontWeight.bold,
                  color: AppColors.secondColor,
                  fontSize: 19.9),
            ),
            Text(
              smallText!,
              textDirection: TextDirection.rtl,
              style: const TextStyle(
                  fontFamily: AppStyle.appFontFamily,
                  color: AppColors.secondColor,
                  fontSize: 14),
            ),
            const SizedBox(
              height: 5,
            ),
            TextButton(
              onPressed: () {
                readMoreButton;
              },
              child: Container(
                height: 50,
                width: 150,
                padding: const EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: AppColors.primaryColor,
                ),
                child: const Center(
                  child: Text(
                    "المزيد...",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(color: AppColors.secondColor),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
