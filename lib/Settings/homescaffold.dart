import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scrap/Widgets/apptextformfield.dart';
import 'package:scrap/Widgets/buildbottomnavigationbar.dart';

import '../Constants/colors.dart';
import 'style.dart';

class HomeScaffold extends StatelessWidget {
  List<Widget> body;
  VoidCallback? onPressed;
  late List<Widget> _bottom;
  HomeScaffold(this.body, {required this.onPressed});

  late List<Widget> _homeColumn;
  void getOnPressed() {}

  @override
  Widget build(BuildContext context) {
    _bottom = [
      Positioned(
        top: 600,
        left: 90,
        right: 90,
        child: TextButton(
          onPressed: () {},
          child: Container(
            padding: const EdgeInsets.only(left: 50, right: 50),
            decoration: BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: BorderRadius.circular(40)),
            child: const Text(
              "انشر الآن",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: AppColors.secondColor,
                  fontSize: 18,
                  fontFamily: AppStyle.appFontFamily,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    ];
    _homeColumn = [
      Row(
        textDirection: TextDirection.rtl,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: onPressed,
            child: CircleAvatar(
              radius: 25,
              backgroundColor: AppColors.secondColor,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 11.0),
                  child: Stack(
                    alignment: Alignment.topLeft,
                    // textDirection: TextDirection.rtl,
                    children: [
                      Row(
                        textDirection: TextDirection.rtl,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 10,
                            height: 10,
                            decoration: BoxDecoration(
                                border: Border.all(),
                                borderRadius: BorderRadius.circular(50)),
                          )
                        ],
                      ),
                      const Icon(
                        Icons.notifications_none,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Image.asset(
            "assets/images/logo_scrap@2x.png",
            height: 120,
            width: 120,
          ),
        ],
      ),
      Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10.0),
        child: AppTextFormField(
          "ابحث عن منتج",
          prefixIcon:
              IconButton(onPressed: () {}, icon: const Icon(Icons.filter_list)),
          suffixIcon:
              IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
        ),
      )
    ];
    return getHomeScaffold(context);
  }

  static void search() {
    print("search");
  }

  Widget getHomeScaffold(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: SafeArea(
          child: AppBottomNavigationBar(key: key),
        ),
        backgroundColor: AppColors.backgroundColor,
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                textDirection: TextDirection.rtl,
                children: IndexedStack(
                  index: AppBottomNavigationBar().currentIndex,
                  children: _homeColumn +
                      body +
                      [
                        const SizedBox(
                          height: 80,
                        )
                      ],
                ).children,
              ),
            ),
            Positioned(
              top: 588,
              left: 90,
              right: 90,
              // key: GlobalKey(debugLabel: ""),
              child: TextButton(
                  key: GlobalKey(debugLabel: "انشر الآن"),
                  onPressed: () {},
                  child: Container(
                    padding: const EdgeInsets.only(left: 50, right: 50),
                    decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.circular(40)),
                    child: const Text(
                      "انشر الآن",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: AppColors.secondColor,
                          fontSize: 18,
                          fontFamily: AppStyle.appFontFamily,
                          fontWeight: FontWeight.bold),
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
