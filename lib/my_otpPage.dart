import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:pinput/pinput.dart';

import 'my_homePage.dart';
import 'my_loginPage.dart';

class OtpPage extends StatefulWidget {
  final String verificationId;
  const OtpPage({Key? key, required this.verificationId}) : super(key: key);

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {

  final FirebaseAuth auth = FirebaseAuth.instance;
  final contryCode=TextEditingController();
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    var width=size.width;
    var height=size.height;

    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: TextStyle(fontSize: 20, color: Color.fromRGBO(30, 60, 87, 1), fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromRGBO(234, 239, 243, 1)),
        borderRadius: BorderRadius.circular(20),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: Color.fromRGBO(114, 178, 238, 1)),
      borderRadius: BorderRadius.circular(8),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(
        color: Color.fromRGBO(234, 239, 243, 1),
      ),
    );
    var code="";

    return Scaffold(
      body: Container(
        height: height,
        width: width,
        color: Colors.white,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                height: height*0.3,
                color: Colors.red.shade600,
                child: Stack(
                    children: [
                      Image.asset("Assets/images/icons8-cross-in-circle-78.png",height: 40,),
                      Image.asset("Assets/images/generic_banner_Ind.png",height: 220,fit: BoxFit.fill,),
                    ]
                ),
              ),
              Padding(
                padding:EdgeInsets.only(top: height*0.07,right: width*0.6),
                child: Text("MOBILE NUMBER",style: TextStyle(fontSize: 15,color: Colors.grey.shade600),),
              ),
              Padding(
                padding:EdgeInsets.only(top: height*0.02,right: width*0.6),
                child: Text("+91-XXXXXX",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),),
              ),
              Padding(
                padding:EdgeInsets.only(top: height*0.05,right: width*0.52),
                child: Text("ONE TIME PASSWORD",style: TextStyle(fontSize: 15,color: Colors.grey.shade600),),
              ),
              SizedBox(height: 20,),
              SizedBox(
                height: 40,
                width: 330,
                child: Pinput(
                  controller: contryCode,
                  length: 6,
                  showCursor: true,
                  onChanged: (value) {
                    code=value;
                  },
                ),
              ),
              SizedBox(height: 20,),
              Container(
                width: width*0.9,
                height: height*0.05,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.red.shade400,),
                  child: Text("VERIFY OTP",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  onPressed: () async{
                    final credential=PhoneAuthProvider.credential(
                        verificationId: widget.verificationId,
                        smsCode: contryCode.text.toString()
                    );
                    try{
                      await auth.signInWithCredential(credential);
                      Get.to(HomePageScreen());
                    }
                    catch(e){
                      Text("Not Proceed");
                    }
                  },
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                width: width*0.9,
                height: height*0.05,
                child: TextButton(
                  child: Text("RESEND OTP (3)",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.indigo),),
                  onPressed: (){},
                ),
                decoration: BoxDecoration(
                  border: Border.all(width: 1,color: Colors.black),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
