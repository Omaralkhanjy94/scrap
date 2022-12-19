import 'package:flutter/material.dart';
import 'package:scrap/Screens/homepage.dart';
import 'package:scrap/Screens/productpage.dart';
import 'package:scrap/Screens/secondpage.dart';

import '../Constants/colors.dart';

class AppBottomNavigationBar extends StatefulWidget {
  AppBottomNavigationBar({Key? key}) : super(key: key);
  int currentIndex = 0 + _AppBottomNavigationBarState().currentIndex;
  @override
  State<AppBottomNavigationBar> createState() => _AppBottomNavigationBarState();
}

class _AppBottomNavigationBarState extends State<AppBottomNavigationBar> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  late List _pages;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      Navigator.pushNamed(context, _pages[index]);
    });
  }

  @override
  Widget build(BuildContext context) {
    _pages = [
      // Navigator.pushNamed(context, HomePage.pageRoute),
      HomePage.pageRoute,
      SecondPage.pageRoute,
      ProductsPage.pageRoute,
      HomePage.pageRoute,

      // Navigator.pushNamed(context, SecondPage.pageRoute),
      // Navigator.pushNamed(context, ProductsPage.pageRoute),
      // Navigator.pushNamed(context, HomePage.pageRoute),
    ];

    return buildbottomappbar(_selectedIndex, _onItemTapped);
  }

  Widget buildbottomappbar(int? _selectedIndex, Function(int)? _onItemTapped) {
    Widget bottomAppBar = BottomNavigationBar(
      backgroundColor: AppColors.secondColor,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home_filled,
            color: Colors.black,
          ),
          label: "",
          activeIcon: Icon(
            Icons.home_filled,
            color: AppColors.primaryColor,
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.favorite_border,
            color: Colors.black,
          ),
          label: "",
          activeIcon: Icon(
            Icons.favorite,
            color: AppColors.primaryColor,
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.notifications_none,
            color: Colors.black,
          ),
          label: "",
          activeIcon: Icon(
            Icons.notifications,
            color: AppColors.primaryColor,
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.person_outline,
            color: Colors.black,
          ),
          label: "",
          activeIcon: Icon(
            Icons.person,
            color: AppColors.primaryColor,
          ),
        ),
      ],
      currentIndex: _selectedIndex!,
      selectedItemColor: Colors.amber[800],
      onTap: (index) {
        _onItemTapped!(index);
      },
    );
    return bottomAppBar;
  }

  int get currentIndex {
    return _selectedIndex;
  }
}
