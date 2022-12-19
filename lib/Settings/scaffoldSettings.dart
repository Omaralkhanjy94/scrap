import 'dart:math';

import 'package:flutter/material.dart';
import 'package:scrap/Settings/style.dart';

import '../Constants/colors.dart';
import '../Widgets/drawer.dart';

class AppScaffold extends StatelessWidget {
  String? title;
  Widget? body;

  AppScaffold({
    Key? key,
    this.title,
    this.body,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title!,
          style: const TextStyle(
              color: AppColors.textColor1,
              fontWeight: FontWeight.bold,
              fontSize: 25),
        ),
        backgroundColor: Colors.transparent,
        centerTitle: true,
        iconTheme: const IconThemeData(color: AppColors.textColor1),
        leading: const CircleAvatar(
          radius: 10,
          backgroundColor: AppColors.secondColor,
          child: BackButton(
            color: Colors.black,
          ),
        ),
        elevation: 0.0,
        // bottomOpacity: 0.0,
      ),
      backgroundColor: AppColors.backgroundColor,
      body: body!,
    );
  }
}

// class InterScaffold extends StatelessWidget {
//   String? title;
//   final Widget? body;

//   InterScaffold({
//     Key? key,
//     this.title,
//     this.body,
//   });

  

//   void setState(Function() param0) {
//     while (true) param0;
//   }
// }
