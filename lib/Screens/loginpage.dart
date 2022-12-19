import 'package:flutter/material.dart';
import 'package:scrap/Screens/homepage.dart';
import 'package:scrap/Screens/registration.dart';
import 'package:scrap/Widgets/apptextformfield.dart';

import '../Constants/colors.dart';
import '../Settings/scaffoldSettings.dart';
import '../Settings/style.dart';

class LoginPage extends StatefulWidget {
  static const String pageRoute = "/login";
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: "تسجيل الدخول",
      body: SingleChildScrollView(
        child: Column(
          textDirection: TextDirection.rtl,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "مرحباً بعودتك",
              style: AppStyle.header,
              textDirection: TextDirection.rtl,
              textAlign: TextAlign.right,
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "مرحباً بِعودتك! الرجاء إدخال التفاصيل الخاصة بك",
              style: AppStyle.subHeader,
              textDirection: TextDirection.rtl,
              textAlign: TextAlign.right,
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 60,
                    ),
                    AppTextFormField("رقم الهاتف أو اسم المستخدم",
                        enabled: true),
                    const SizedBox(
                      height: 20,
                    ),
                    AppTextFormField("كلمة المرور",
                        keyboardtype: TextInputType.visiblePassword,
                        obscureText: true),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      textDirection: TextDirection.rtl,
                      children: [
                        TextButton(
                            onPressed: () {},
                            child: const Text(
                              "نسيت كلمة السر",
                              style: TextStyle(
                                  color: AppColors.textColor1,
                                  fontFamily: AppStyle.appFontFamily,
                                  fontSize: 12),
                            )),
                        Row(
                          children: [
                            Checkbox(value: false, onChanged: (checked) {}),
                            const Text(
                              "تذكرني",
                              style: TextStyle(
                                  color: AppColors.textColor1,
                                  fontFamily: AppStyle.appFontFamily,
                                  fontSize: 12),
                            )
                          ],
                        ),
                      ],
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          fixedSize: const Size(200, 65),
                          // primary: AppColors.primaryColor,
                          backgroundColor: AppColors.primaryColor,
                          maximumSize: const Size.fromHeight(90),
                          minimumSize: const Size.fromHeight(40)),
                      onPressed: () async {
                        Navigator.pushReplacementNamed(
                            context, HomePage.pageRoute);
                      },
                      child: const Text(
                        "تسجيل الدخول",
                        style: TextStyle(
                            fontFamily: AppStyle.appFontFamily,
                            fontSize: 24,
                            color: AppColors.secondColor),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      textDirection: TextDirection.rtl,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "هل لا تمتلك حِساب؟ ",
                          style: TextStyle(
                              color: AppColors.textColor1,
                              fontFamily: AppStyle.appFontFamily,
                              fontSize: 12),
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.pushReplacementNamed(
                                  context, RegistrationPage.pageRoute);
                            },
                            child: const Text(
                              "تسجيل",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 31, 12, 209),
                                  fontFamily: AppStyle.appFontFamily,
                                  fontSize: 12),
                            )),
                      ],
                    ),
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
