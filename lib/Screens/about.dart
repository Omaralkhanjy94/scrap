import 'package:flutter/material.dart';

import '../Settings/scaffoldSettings.dart';

class AboutPage extends StatefulWidget {
  static const String pageRoute = "/aboutus";
  const AboutPage({Key? key}) : super(key: key);

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: "حولنا",
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [

          ],
        ),
      ),

    );
  }
}
