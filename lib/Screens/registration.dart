import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:scrap/Screens/loginpage.dart';
import 'package:scrap/Screens/policyterms.dart';
import 'package:scrap/Settings/style.dart';
import 'package:scrap/Widgets/appdropdown.dart';
import 'package:scrap/Widgets/apptextformfield.dart';

import '../Constants/colors.dart';
import '../Constants/constants.dart';
import '../Settings/scaffoldSettings.dart';
import 'homepage.dart';

class RegistrationPage extends StatefulWidget {
  static const String pageRoute = "/registration";
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  // TextEditingController _controller = new TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  FocusNode searchFocusNode = FocusNode();
  FocusNode textFieldFocusNode = FocusNode();
  late SingleValueDropDownController _cnt;
  late MultiValueDropDownController _cntMulti;
  bool pressed1 = false;

  String? _almuhafadha;
  String? _currentSelectedValue;
  @override
  void initState() {
    _cnt = SingleValueDropDownController();
    _cntMulti = MultiValueDropDownController();
    super.initState();
  }

  @override
  void dispose() {
    _cnt.dispose();
    _cntMulti.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: "التسجيل",
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            textDirection: TextDirection.rtl,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "تسجيل",
                style: AppStyle.header,
                textDirection: TextDirection.rtl,
                textAlign: TextAlign.right,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "دعنا ننشئ حِساباً لك",
                style: AppStyle.subHeader,
                textDirection: TextDirection.rtl,
                textAlign: TextAlign.right,
              ),
              const SizedBox(
                height: 5,
              ),
              AppTextFormField("الاسم", keyboardtype: TextInputType.name),
              const SizedBox(
                height: 10,
              ),
              AppTextFormField("البريد الإلكتروني",
                  keyboardtype: TextInputType.emailAddress),
              const SizedBox(
                height: 10,
              ),
              AppTextFormField("رقم الهاتف",
                  prefixIcon: Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: Image.asset(
                      "assets/images/jordan.png",
                      width: 40,
                      height: 40,
                    ),
                  ),
                  keyboardtype: TextInputType.phone),
              const SizedBox(
                height: 10,
              ),
              AppTextFormField("كلمة المرور",
                  keyboardtype: TextInputType.visiblePassword),
              const SizedBox(
                height: 10,
              ),
              AppDropDown(AppConstants.almuhafadhat, "المحافظة",
                  AppConstants.muhafadhatController),
              const SizedBox(
                height: 10,
              ),
              AppDropDown(AppConstants.almanatika, "المنطقة",
                  AppConstants.almantikaController),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  textDirection: TextDirection.rtl,
                  children: [
                    const Text(
                      "التسجيل يعني الموافقة على",
                      style: TextStyle(fontSize: 14),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          "الشروط والأفكار",
                          style: TextStyle(fontSize: 14),
                        )),
                    const Text(
                      "و",
                      style: TextStyle(fontSize: 14),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.pushNamed(
                              context, PolicyTermsPage.pageRoute);
                        },
                        child: const Text(
                          "سياسة الخصوصية",
                          style: TextStyle(fontSize: 14),
                        )),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextButton(
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
                    Navigator.pushReplacementNamed(context, HomePage.pageRoute);
                  },
                  child: const Text(
                    "تسجيل الدخول",
                    style: TextStyle(
                        fontFamily: AppStyle.appFontFamily,
                        fontSize: 24,
                        color: AppColors.secondColor),
                  ),
                ),
              ),
              Row(
                textDirection: TextDirection.rtl,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "هل تمتلك حِساب بالفِعل؟ ",
                    style: TextStyle(
                        color: AppColors.textColor1,
                        fontFamily: AppStyle.appFontFamily,
                        fontSize: 12),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(
                            context, LoginPage.pageRoute);
                      },
                      child: const Text(
                        "تسجيل الدخول",
                        style: TextStyle(
                            color: Color.fromARGB(255, 31, 12, 209),
                            fontFamily: AppStyle.appFontFamily,
                            fontSize: 12),
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
