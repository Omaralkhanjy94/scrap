import 'dart:async';

import 'package:flutter/material.dart';
import 'package:scrap/Screens/interpages.dart';
// import 'package:splashscreen/splashscreen.dart';

import '../Constants/colors.dart';
import 'homepage.dart';

class AppSplashScreen extends StatefulWidget {
  const AppSplashScreen({Key? key}) : super(key: key);

  @override
  State<AppSplashScreen> createState() => _AppSplashScreenState();
}

class _AppSplashScreenState extends State<AppSplashScreen> with SingleTickerProviderStateMixin{

  late AnimationController animationController;
  late Animation<double> animation;
  final pi = 22/7;
  void setRotation(int degree){
    final double angle = degree * pi / 180;

    animation = Tween<double>(begin: 0,end: angle).animate(animationController);
  }
  SplashScreenTimer(){
    Timer(const Duration(seconds: 5), () async{
      Navigator.pushNamed(context, InterPageOne.pageRoute);
    });
  }

  @override
  void initState() {
    // TODO: implement initState

    // animationController = AnimationController(
    //     duration: const Duration(seconds: 5), vsync: TickerProvider);

    animationController = AnimationController(vsync: this ,
    duration: Duration(milliseconds: 700),

    );
    animationController.addStatusListener((status) async{
      if(status==AnimationStatus.completed){
        await Future.delayed(Duration(seconds: 1));
        animationController.reset();
      }
    });
    setRotation(900);
    setState(() {
      // while(true) {
        animationController.forward(from: 0);
      // }
    });
    super.initState();
    SplashScreenTimer();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    // super.dispose();
    animationController.dispose();
    super.dispose();
  }
  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
    super.setState(fn);
    animationController.forward(from: 0);
  }
  @override
  Widget build(BuildContext context) {

    return Material(
      child: Container(
        decoration: const BoxDecoration(

          gradient: LinearGradient(
            colors: <Color>[
              Color(0xff017e71),
              // Color(0xff3ac6ab),
              Color(0xff1fd7b7),
          ],
          begin: FractionalOffset(0.0, 0.0),
            end: FractionalOffset(0.0, 1.0),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp,

          )
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/logo_scrap@2x.png",width: 180,),
              AnimatedBuilder(
                builder:(context,child) => Transform.rotate(
                    angle: animation.value,
                child: Image.asset("assets/images/loader@2x.png",
                  fit: BoxFit.cover,width: 35,)),
                animation: animation,
              ),

            ],
          ),
        ),
      ),
    );
  }
}
