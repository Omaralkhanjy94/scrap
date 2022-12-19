import 'package:flutter/material.dart';

import '../Settings/scaffoldSettings.dart';

class ProductsPage extends StatefulWidget {
  static const String pageRoute = "/products";
  const ProductsPage({Key? key}) : super(key: key);

  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: "المنتجات",
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
