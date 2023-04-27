import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'my_homePage.dart';
import 'my_loginPage.dart';
import 'my_otpPage.dart';
import 'my_referralPage.dart';
import 'my_splashScreen2.dart';
import 'my_splash_screen.dart';
import 'my_welcome_page.dart';
//import 'onbording.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
    home: SplashScreen(),
    //  initialRoute: "my_splash_screen",
      // routes: {
      //   "my_splash_screen":(context)=>SplashScreen(),
      //   "my_welcome_page":(context)=>OnBoardScreen(),
      //   "my_loginPage":(context)=>LoginPage(),
      //   "my_otpPage":(context)=>OtpPage(verificationId: '',),
      //   "my_splashScreen2":(context)=>SplashScreen2(),
      //   "my_homePage":(context)=>HomePageScreen(),
      //   "my_referralPage":(context)=>ReferralPage(),
      //   "my_referralPage":(context)=>ReferralPage(),
      //  //"onbordin":(context)=>Onbording(),
      // },

    );
  }
}

