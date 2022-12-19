import 'package:flutter/material.dart';
import 'package:scrap/Constants/constants.dart';
import 'package:scrap/Screens/loginpage.dart';
import 'package:scrap/Settings/homescaffold.dart';
import 'package:scrap/Widgets/apptextformfield.dart';

import '../Constants/colors.dart';
import '../Settings/scaffoldSettings.dart';
import '../Settings/style.dart';
import '../Widgets/appdropdown.dart';

class HomePage extends StatefulWidget {
  static const String pageRoute = "/home";

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _departmentController = TextEditingController();
  final TextEditingController _muhafadhatController = TextEditingController();
  final TextEditingController _almantikaController = TextEditingController();
  var body;
  bool checked1 = true, checked2 = false, checked3 = false;
  @override
  Widget build(BuildContext context) {
    body = <Widget>[
      const Text(
        "نشر الإعلان",
        style: TextStyle(
            color: AppColors.primaryColor,
            fontFamily: AppStyle.appFontFamily,
            fontSize: 30,
            fontWeight: FontWeight.w800),
      ),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          textDirection: TextDirection.rtl,
          children: [
            btn(
                onPressed: () {},
                name: "بيع منتج مستعمل",
                backgroundColor1: AppColors.primaryColor,
                backgroundColor2: AppColors.secondColor,
                textColor: Colors.white,
                iconColor: AppColors.primaryColor),
            btn(
                onPressed: () {},
                name: "استبدال منتج مستعمل",
                backgroundColor1: AppColors.secondColor,
                backgroundColor2: AppColors.primaryColor,
                textColor: AppColors.textColor1,
                iconColor: AppColors.secondColor),
            btn(
              onPressed: () {},
              name: "طلب منتج مستعمل",
              backgroundColor1: AppColors.secondColor,
              backgroundColor2: AppColors.primaryColor,
              textColor: AppColors.textColor1,
              iconColor: AppColors.secondColor,
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            AppDropDown(const ["1", "2", "3"], "القسم", _departmentController),
            const SizedBox(
              height: 10,
            ),
            AppDropDown(
                AppConstants.almuhafadhat, "المحافظة", _muhafadhatController),
            const SizedBox(
              height: 10,
            ),
            AppDropDown(
                AppConstants.almanatika, "المنطقة", _almantikaController),
            const SizedBox(
              height: 10,
            ),
            AppTextFormField(
              "عنوان لمنتجك المستعمل",
            ),
            const SizedBox(
              height: 10,
            ),
            AppTextFormField(
              "الشرح بالتفصيل عن منتجك المستعمل",
              maxLines: 10,
            ),
            const SizedBox(
              height: 10,
            ),
            AppTextFormField(
              "يُرجى تحديد الكمية المستخدمة أو الوقت المستخدم",
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 13.8),
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColors.textBackgroundColor,
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  textDirection: TextDirection.rtl,
                  children: [
                    const Text(
                      "السعر",
                      style: TextStyle(
                          fontSize: 16,
                          color: AppColors.textColor1,
                          fontFamily: AppStyle.appFontFamily),
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      enabled: true,
                      obscureText: false,
                      textAlign: TextAlign.center,
                      textDirection: TextDirection.rtl,
                      decoration: const InputDecoration(
                          constraints:
                              BoxConstraints(maxHeight: 50, maxWidth: 200),
                          contentPadding: EdgeInsets.only(right: 0),
                          fillColor: AppColors.textBackgroundColor,
                          filled: true,
                          border: InputBorder.none,
                          hintText: "00000",
                          // hintMaxLines: maxlines,
                          hintStyle: TextStyle(
                              fontSize: 16,
                              color: AppColors.textColor1,
                              fontFamily: AppStyle.appFontFamily)),
                    ),
                    const Text(
                      "د.أ",
                      style: TextStyle(
                          fontSize: 16,
                          color: AppColors.textColor1,
                          fontFamily: AppStyle.appFontFamily),
                    ),
                  ]),
            ),
            Row(
              textDirection: TextDirection.rtl,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  textDirection: TextDirection.rtl,
                  children: [
                    const Text(
                      "قابل للتفاوض",
                      style: TextStyle(
                          fontFamily: AppStyle.appFontFamily, fontSize: 12),
                    ),
                    Checkbox(
                        activeColor: AppColors.primaryColor,
                        fillColor:
                            MaterialStateProperty.all(AppColors.primaryColor),
                        value: checked1,
                        splashRadius: 10,
                        overlayColor:
                            MaterialStateProperty.all(AppColors.primaryColor),
                        onChanged: ((value) {
                          setState(() {
                            checked1 = value!;
                          });
                        }),
                        checkColor: AppColors.secondColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        )),
                  ],
                ),
                Row(
                  textDirection: TextDirection.rtl,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "مزاد علني",
                      style: TextStyle(
                          fontFamily: AppStyle.appFontFamily, fontSize: 12),
                    ),
                    Checkbox(
                        activeColor: AppColors.primaryColor,
                        fillColor:
                            MaterialStateProperty.all(AppColors.primaryColor),
                        value: checked2,
                        splashRadius: 10,
                        overlayColor:
                            MaterialStateProperty.all(AppColors.primaryColor),
                        onChanged: ((value) {
                          setState(() {
                            checked2 = value!;
                          });
                        }),
                        checkColor: AppColors.secondColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        )),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  textDirection: TextDirection.rtl,
                  children: [
                    const Text(
                      "غير قابل للتفاوض",
                      style: TextStyle(
                          fontFamily: AppStyle.appFontFamily, fontSize: 12),
                    ),
                    Checkbox(
                        activeColor: AppColors.primaryColor,
                        fillColor:
                            MaterialStateProperty.all(AppColors.primaryColor),
                        value: checked3,
                        splashRadius: 10,
                        overlayColor:
                            MaterialStateProperty.all(AppColors.primaryColor),
                        onChanged: ((value) {
                          setState(() {
                            checked3 = value!;
                          });
                        }),
                        checkColor: AppColors.secondColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        )),
                  ],
                ),
              ],
            )
          ],
        ),
      )
    ];
    return HomeScaffold(body, onPressed: () {
      search(context);
    });
  }

  static void search(BuildContext context) {
    Navigator.popAndPushNamed(context, LoginPage.pageRoute);
  }

  static Widget btn(
      {required VoidCallback? onPressed,
      required String? name,
      Color? backgroundColor1,
      Color? backgroundColor2,
      Color? textColor,
      Color? iconColor}) {
    return GestureDetector(
      onTap: () {
        onPressed;
        print("pressed!");
      },
      child: Container(
        padding: const EdgeInsets.only(top: 5, bottom: 5),
        width: 360 / 3 - 3,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: backgroundColor1,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          textDirection: TextDirection.rtl,
          children: [
            Text(
              name!,
              style: TextStyle(color: textColor, fontSize: 10),
            ),
            const SizedBox(
              width: 5,
            ),
            CircleAvatar(
              radius: 8,
              backgroundColor: backgroundColor2,
              child: Icon(
                Icons.add,
                color: iconColor,
                size: 10.8,
              ),
            )
          ],
        ),
      ),
    );
  }
}
