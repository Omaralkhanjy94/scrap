import 'package:flutter/material.dart';

import '../Settings/scaffoldSettings.dart';

class PolicyTermsPage extends StatefulWidget {
  static const String pageRoute = "/policyTerms";
  const PolicyTermsPage({Key? key}) : super(key: key);

  @override
  State<PolicyTermsPage> createState() => _PolicyTermsPageState();
}

class _PolicyTermsPageState extends State<PolicyTermsPage> {
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: "سياسة الخصوصية",
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
