import 'package:flutter/material.dart';

import '../Settings/scaffoldSettings.dart';

class ScrapPage extends StatefulWidget {
  static const String pageRoute = "/scrap";
  const ScrapPage({Key? key}) : super(key: key);

  @override
  State<ScrapPage> createState() => _ScrapPageState();
}

class _ScrapPageState extends State<ScrapPage> {
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: "سكرابي",
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

          ],
        ),
      ),

    );
  }
}
