import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:scrap/Constants/colors.dart';
import 'package:scrap/Models/product.dart';
import 'package:scrap/Screens/loginpage.dart';
import 'package:scrap/Settings/homescaffold.dart';
import 'package:scrap/Widgets/home_ad.dart';
import 'package:scrap/Widgets/multi_group_button.dart';
import 'package:scrap/Widgets/single_group_button.dart';

import '../Widgets/tapButton.dart';

class SecondPage extends StatefulWidget {
  static const String pageRoute = "/second";

  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  CarouselController carouselController1 = CarouselController();
  late List<Widget> body;
  bool checked1 = true, checked2 = false, checked3 = false;
  double p = 0.0;
  @override
  Widget build(BuildContext context) {
    body = <Widget>[
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: CarouselSlider(
          carouselController: carouselController1,
          items: [
            HomeAd(
              imgPath: "assets/images/Rectangle_34.png",
              readMoreButton: () {},
              bigText: "خصم %25",
              smallText: "أعلن لمؤسستك أمام الآلاف",
            ),
            HomeAd(
              imgPath: "assets/images/Rectangle_34_cu.png",
              readMoreButton: () {},
              bigText: "خصم %35",
              smallText: "أعلن لمؤسستك أو شركتك هنا",
            ),
          ],
          options: CarouselOptions(
            scrollDirection: Axis.horizontal,
            height: HomeAd.containerHeight,
            onPageChanged: ((index, reason) {
              setState(() {
                p = index.toDouble();
              });
            }),
            // clipBehavior: Clip.antiAlias,
            pageSnapping: false,
            padEnds: false,
            disableCenter: true,
            enlargeCenterPage: true,
            autoPlay: false,
            aspectRatio: 0,
            autoPlayCurve: Curves.linear,
            enableInfiniteScroll: false,
            // autoPlayAnimationDuration: const Duration(milliseconds: 800),
            viewportFraction: 0.75,
          ),
        ),
      ),
      DotsIndicator(
        decorator: const DotsDecorator(
          size: Size(10, 10),
          activeColor: Color.fromRGBO(39, 218, 185, 1),
          color: Color.fromRGBO(39, 218, 185, 0.49),
        ),
        dotsCount: 2,
        axis: Axis.horizontal,
        mainAxisAlignment: MainAxisAlignment.center,
        position: p,
        onTap: ((position) {
          setState(() {
            p = position;
            carouselController1.jumpToPage(position.toInt());
          });
        }),
      ),
      const SizedBox(
        height: 5,
      ),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              width: 10,
            ),
            SingleGroupButton(
              img: "assets/images/n_32_1_fk.png",
              title: "الكل",
              activated: true,
            ),
            const SizedBox(
              width: 10,
            ),
            SingleGroupButton(
              img: "assets/images/furniture@2x.png",
              title: "أثاث مستعمل",
              activated: false,
            ),
            const SizedBox(
              width: 10,
            ),
            MultiGroupButton(
              imgs: const [
                "assets/images/car@2x.png",
                "assets/images/bike@2x.png",
                "assets/images/motorcycle@2x.png"
              ],
              title: "سيارات ودراجات مستعملة",
            ),
            const SizedBox(
              width: 10,
            ),
            MultiGroupButton(
              imgs: const [
                "assets/images/car-parts@2x.png",
                "assets/images/wheel@2x.png",
                "assets/images/car-door@2x.png"
              ],
              title: "قطع سيارات مستعملة",
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AppTabButton(
              title: "الاستبدال",
              img: "assets/images/change@2x.png",
            ),
            AppTabButton(
              title: "أدوات للبيع",
              img: "assets/images/sale@2x.png",
            ),
            AppTabButton(
              title: "الآدوات المطلوبة",
              img: "assets/images/wanted@2x.png",
            ),
          ],
        ),
      ),
      Product(
        title: "كنب توزيع إيطالي للبيع",
        img: Image.asset("assets/images/n_555555555@2x.png"),
        note: "136.79\$",
        status1: "للبيع",
        status2: "mohammad barakat",
        backgroundColor: AppColors.rowBackgroundColor1,
      ),
      Product(
        title: "عطر نموذج للتبديل",
        img: Image.asset("assets/images/Du-FdaMXcAA8Vjj@2x.png"),
        note: "بدي عطر عادي",
        status1: "للبيع",
        status2: "mohammad barakat",
        backgroundColor: AppColors.rowBackgroundColor2,
      ),
      Product(
        title: "  سيارة مستعملة للبيع",
        img: Image.asset("assets/images/kia_sephia_6-1400x788@2x.png"),
        note: "136.79\$",
        status1: "للبيع",
        status2: "mohammad barakat",
        backgroundColor: AppColors.rowBackgroundColor1,
      ),
    ];
    return HomeScaffold(body, onPressed: () {
      search(context);
    });
  }

  static void search(BuildContext context) {
    Navigator.popAndPushNamed(context, LoginPage.pageRoute);
  }

  static Widget btn(
      {required VoidCallback? onPressed,
      required String? name,
      Color? backgroundColor1,
      Color? backgroundColor2,
      Color? textColor,
      Color? iconColor}) {
    return GestureDetector(
      onTap: () {
        onPressed;
        print("pressed!");
      },
      child: Container(
        padding: const EdgeInsets.only(top: 5, bottom: 5),
        width: 360 / 3 - 3,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: backgroundColor1,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          textDirection: TextDirection.rtl,
          children: [
            Text(
              name!,
              style: TextStyle(color: textColor, fontSize: 10),
            ),
            const SizedBox(
              width: 5,
            ),
            CircleAvatar(
              radius: 8,
              backgroundColor: backgroundColor2,
              child: Icon(
                Icons.add,
                color: iconColor,
                size: 10.8,
              ),
            )
          ],
        ),
      ),
    );
  }
}
