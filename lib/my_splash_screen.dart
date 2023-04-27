import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'bottemNavigationFiles/helpPage.dart';
import 'bottemNavigationFiles/myAcFile.dart';
import 'my_loginPage.dart';
import 'my_otpPage.dart';
import 'my_splashScreen2.dart';
import 'my_welcome_page.dart';



class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 1),(){
      //Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
      Get.to(SplashScreen2());
     // Get.to(MyHelpPage());
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
         ],
        ),
      ),
    );
  }
}
