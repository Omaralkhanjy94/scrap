import 'package:flutter/material.dart';
import 'package:scrap/Constants/colors.dart';
import 'package:scrap/Screens/registration.dart';
import '../Screens/about.dart';
import '../Screens/homepage.dart';
import '../Screens/loginpage.dart';
import '../Screens/policyterms.dart';
import '../Screens/productpage.dart';
import '../Screens/scrappage.dart';

class MyDrawer extends StatelessWidget {
  String? pageTitle;
  MyDrawer({Key? key, this.pageTitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      // padding: const EdgeInsets.only(left: 200),
      color: AppColors.backgroundColor,
      child: ListView(
        children: [
          ListTile(
            title: TextField(
              textAlign: TextAlign.right,
              textDirection: TextDirection.rtl,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40))),
            ) /*const Text("البحث", textAlign: TextAlign.right,textDirection: TextDirection.rtl,)*/,
            style: ListTileStyle.drawer,
            trailing: IconButton(
              onPressed: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, HomePage.pageRoute);
              },
              icon: const Icon(Icons.search),
            ),
          ),
          ListTile(
            title: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, HomePage.pageRoute);
                },
                child: const Text(
                  "الرئيسية",
                  style: TextStyle(
                    color: AppColors.textColor1,
                  ),
                  textAlign: TextAlign.right,
                  textDirection: TextDirection.rtl,
                )),
            trailing: IconButton(
              onPressed: () {
                Navigator.pushNamed(context, HomePage.pageRoute);
              },
              icon: const Icon(Icons.home_filled),
            ),
          ),
          ListTile(
            title: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, HomePage.pageRoute);
                },
                child: const Text(
                  "المنتجات",
                  style: TextStyle(
                    color: AppColors.textColor1,
                    decoration: TextDecoration.none,
                  ),
                  textAlign: TextAlign.right,
                  textDirection: TextDirection.rtl,
                )),
            trailing: IconButton(
              onPressed: () {
                Navigator.pushNamed(context, ProductsPage.pageRoute);
              },
              icon: const Icon(Icons.shopping_cart_outlined),
            ),
          ),
          ListTile(
            title: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, HomePage.pageRoute);
                },
                child: const Text(
                  "سكرابي",
                  style: TextStyle(
                    color: AppColors.textColor1,
                    decoration: TextDecoration.none,
                  ),
                  textAlign: TextAlign.right,
                  textDirection: TextDirection.rtl,
                )),
            trailing: IconButton(
              onPressed: () {
                Navigator.pushNamed(context, ScrapPage.pageRoute);
              },
              icon: const Icon(Icons.store),
            ),
          ),
          ListTile(
            title: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, HomePage.pageRoute);
                },
                child: const Text(
                  "سياسة الخصوصية",
                  style: TextStyle(
                    color: AppColors.textColor1,
                    decoration: TextDecoration.none,
                  ),
                  textAlign: TextAlign.right,
                  textDirection: TextDirection.rtl,
                )),
            trailing: IconButton(
              onPressed: () {
                Navigator.pushNamed(context, PolicyTermsPage.pageRoute);
              },
              icon: const Icon(Icons.privacy_tip_outlined),
            ),
          ),
          ListTile(
            title: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, HomePage.pageRoute);
                },
                child: const Text(
                  "حولنا",
                  style: TextStyle(
                    color: AppColors.textColor1,
                  ),
                  textAlign: TextAlign.right,
                  textDirection: TextDirection.rtl,
                )),
            trailing: IconButton(
              onPressed: () {
                Navigator.pushNamed(context, AboutPage.pageRoute);
              },
              icon: const Icon(Icons.info_outline),
            ),
          ),
          const Divider(
            height: 10,
            thickness: 3,
            indent: 10,
            endIndent: 10,
            color: AppColors.primaryColor,
          ),
          regOrLog(context),
        ],
      ),
    );
  }

  Widget regOrLog(BuildContext context) {
    bool regOrLog = false;
    Widget? but;
    switch (pageTitle!) {
      case "الرئيسية":
      case "المنتجات":
      case "سكرابي":
      case "سياسة الخصوصية":
      case "حولنا":
        but = logoutBTN(context);
        break;
      case "التسجيل":
        but = loginBTN(context);
        break;
      case "تسجيل الدخول":
        but = regBTN(context);
        break;
      case "الحساب":
        but = logoutBTN(context);
        break;
      default:
        but = Container();
    }
    return but;
  }

  Widget regBTN(BuildContext context) {
    return SizedBox(
      width: 150,
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, RegistrationPage.pageRoute);
        },
        style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.primaryColor,
            maximumSize: const Size(100, 150)),
        child: const Text("تسجيل"),
      ),
    );
  }

  Widget loginBTN(BuildContext context) {
    return SizedBox(
      width: 150,
      child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, LoginPage.pageRoute);
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.secondColor,
          ),
          child: const Text(
            "تسجيل الدخول",
            style: TextStyle(color: AppColors.textColor1),
          )),
    );
  }

  Widget logoutBTN(BuildContext context) {
    return SizedBox(
      width: 150,
      child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, LoginPage.pageRoute);
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.secondColor,
          ),
          child: const Text(
            "تسجيل الخروج",
            style: TextStyle(color: AppColors.textColor1),
          )),
    );
  }
}
