import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:scrap/Screens/loginpage.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'package:scrap/Screens/homepage.dart';

import '../Constants/colors.dart';
import '../Settings/style.dart';

class InterPageOne extends StatefulWidget {
  static const String pageRoute = "";
  const InterPageOne({Key? key}) : super(key: key);

  @override
  State<InterPageOne> createState() => _InterPageOneState();
}

class _InterPageOneState extends State<InterPageOne> {
  final obcontroller = PageController();
  bool isLastPage = false;
  @override
  void dispose() {
    // TODO: implement dispose
    obcontroller.dispose();
    super.dispose();
  }

  final _totalDots = 3;
  double _currentPosition = 0.0;

  // double _validPosition(double position) {
  //   if (position >= _totalDots) return 0;
  //   if (position < 0) return _totalDots - 1.0;
  //   return position;
  // }

  // void _updatePosition(double position) {
  //   setState(() => _currentPosition = _validPosition(position));
  // }

  // Widget _buildRow(List<Widget> widgets) {
  //   return Padding(
  //     padding: const EdgeInsets.only(bottom: 20.0),
  //     child: Row(
  //       mainAxisAlignment: MainAxisAlignment.spaceAround,
  //       children: widgets,
  //     ),
  //   );
  // }

  // String getCurrentPositionPretty() {
  //   return (_currentPosition + 1.0).toStringAsPrecision(2);
  // }

  @override
  Widget build(BuildContext context) {
    const decorator = DotsDecorator(
      activeColor: Colors.green,
      activeSize: Size.square(30.0),
      activeShape: RoundedRectangleBorder(),
    );

    return Scaffold(
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   backgroundColor: AppColors.primaryColor,
      //   child: Icon(Icons.keyboard_arrow_right, size: 40),
      // ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 20,
          ),
          Expanded(
            flex: 3,
            child: PageView(
              padEnds: false,
              controller: obcontroller,
              onPageChanged: (index) {
                setState(() => isLastPage = index == 2);
              },
              children: [
                onboard("Image_1.png",
                    "يمنكنك الآن بيع أو شراء أو استبدال لأدواتك المستعملة أو لخردتك مجاناً على منصة سكراب"),
                onboard("Image_2.png",
                    "تستطيع المراسلة ورؤية المفضلة ونشر إعلان  لأدواتك المستعملة من خلال الضغط على أحدِ الأزرار التي تكون في الأسفل"),
                onboard("Launching-amico.png",
                    "استكشف أفضل الخدمات لأدوات مستعملة أو لخردتك حسب متطلباتك واختيارك"),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: SmoothPageIndicator(
              controller: obcontroller,
              count: _totalDots,
              effect: const WormEffect(
                  dotHeight: 10,
                  dotWidth: 10,
                  type: WormType.thin,
                  activeDotColor: AppColors.primaryColor,
                  dotColor: Color.fromARGB(255, 141, 223, 208)
                  // strokeWidth: 5,
                  ),
              onDotClicked: (index) => obcontroller.animateToPage(index,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeIn),
            ),
          ),
        ],
      ),

      bottomSheet: isLastPage
          ? TextButton(
              style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  // primary: AppColors.primaryColor,
                  backgroundColor: AppColors.primaryColor,
                  maximumSize: const Size.fromHeight(90),
                  minimumSize: const Size.fromHeight(40)),
              onPressed: () async {
                Navigator.restorablePopAndPushNamed(
                  context,
                  LoginPage.pageRoute,
                );
              },
              child: const Text(
                "البدء",
                style: TextStyle(
                    fontFamily: AppStyle.appFontFamily,
                    fontSize: 24,
                    color: AppColors.secondColor),
              ),
            )
          : Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    child: const Text(
                      "تخطي",
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                    onPressed: () {
                      obcontroller.jumpToPage(2);
                      // Navigator.pushNamed(context, HomePage.pageRoute);
                    },
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      obcontroller.nextPage(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeInOut);
                    },
                    backgroundColor: AppColors.primaryColor,
                    child: const Icon(Icons.keyboard_arrow_right, size: 40),
                  ),
                ],
              ),
            ),
    );
  }

  Widget onboard(String imgname, String txt) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/$imgname"),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              txt,
              textAlign: TextAlign.center,
              style: AppStyle.interCapture,
            ),
          )
        ],
      ),
    );
  }
}
