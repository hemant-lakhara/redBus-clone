
import 'dart:async';
//import 'package:lottie/lottie.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lottie/lottie.dart';

import 'my_homePage.dart';
import 'my_loginPage.dart';
import 'my_otpPage.dart';
import 'onbording.dart';

class SplashScreen2 extends StatefulWidget {
  const SplashScreen2({Key? key}) : super(key: key);

  @override
  State<SplashScreen2> createState() => _SplashScreen2State();
}

class _SplashScreen2State extends State<SplashScreen2> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Get.to(LoginPage());
      //Get.to(Onbording());

   // Get.to(HomePageScreen());
    });
  }
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    var width=size.width;
    var height=size.height;

    return  Scaffold(
      body: Container(
        width: width,
        height: height,
        color: Colors.red.shade400,
        child: Stack(
          children: [
            Center(
              child: Container(
                  width: width*0.6,
                  height: height*0.4,
                  child: Image.asset("Assets/images/95c5bf24-7f10-4fec-8a30-d836a6d8f12a-removebg-preview.png",)
              ),
            ),
            Padding(
              padding:EdgeInsets.only(top: height*0.6,left: width*0.3),
              child: Text("Bus.Train.Cab",style: TextStyle(fontSize: 28,color: Colors.white),),
            ),
            Padding(
              padding:EdgeInsets.only(top: height*0.66),
              child: Container(
                  height: height*0.008,
                  width: width,

                  child: Lottie.asset("Assets/images/99740-line-loading.json",fit: BoxFit.fill)),
            ),
           Padding(
             padding:  EdgeInsets.only(top: height*0.95,left: width*0.3),
             child: Text("Designed by:- Hemant Lakhara",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10,color: Colors.white),
           )),
             ],
        ),
      ),
    );
  }
}
