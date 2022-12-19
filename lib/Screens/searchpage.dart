import 'package:flutter/material.dart';

import '../Settings/scaffoldSettings.dart';

class SearchPage extends StatefulWidget {
  static const String pageRoute = "/search";
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: "البحث",
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
