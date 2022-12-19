import 'package:flutter/material.dart';
import 'package:scrap/Screens/interpages.dart';
import 'package:scrap/Screens/secondpage.dart';

import '../Screens/registration.dart';
import '../Screens/about.dart';
import '../Screens/homepage.dart';
import '../Screens/loginpage.dart';
import '../Screens/policyterms.dart';
import '../Screens/productpage.dart';
import '../Screens/scrappage.dart';
import '../Screens/splashscreen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'scrap',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const AppSplashScreen(),
      //const SecondPage(),
      //
      routes: {
        HomePage.pageRoute: (context) => const HomePage(),
        SecondPage.pageRoute: (context) => const SecondPage(),
        ProductsPage.pageRoute: (context) => const ProductsPage(),
        ScrapPage.pageRoute: (context) => const ScrapPage(),
        PolicyTermsPage.pageRoute: (context) => const PolicyTermsPage(),
        AboutPage.pageRoute: (context) => const AboutPage(),
        RegistrationPage.pageRoute: (context) => const RegistrationPage(),
        LoginPage.pageRoute: (context) => const LoginPage(),
        InterPageOne.pageRoute: (context) => const InterPageOne(),
      },
    );
  }
}
