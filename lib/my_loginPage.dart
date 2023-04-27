import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import 'my_homePage.dart';
import 'my_otpPage.dart';
import 'my_referralPage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  static String varify="";

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final auth=FirebaseAuth.instance;
  final contryCode=TextEditingController();
  String phone="";

  void initState(){
    super.initState();
    contryCode.text="+91";
  }
  final GoogleSignIn _googleSignIn=GoogleSignIn();
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    var width=size.width;
    var height=size.height;

    return Scaffold(
      body: Container(
        width: width,
        height: height,
        color: Colors.white,
        child: SingleChildScrollView(
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
              SizedBox(height:10),
              Text("Create Account or Sign in",style: TextStyle(fontFamily: "ABeeZee-Italic",fontSize: 20,fontWeight: FontWeight.bold),),
              Padding(
                padding:EdgeInsets.only(top: height*0.02),
                child: Container(
                  width: width*0.9,
                  height: height*0.06,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(width: 1,color: Colors.black)
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 10,),
                      SizedBox(width: 40,
                      child: TextField(
                        keyboardType: TextInputType.phone,
                        controller: contryCode,
                        decoration: InputDecoration(border:InputBorder.none),
                      ),
                      ),
                      Text("|",style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.bold),),
                      SizedBox(width: 10),
                      Expanded(
                        child: TextField(
                          keyboardType: TextInputType.phone,
                          onChanged: (value) {
                            phone=value;
                          },
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Enter your mobile number",
                            hintStyle: TextStyle(color: Colors.grey,fontSize: 17,fontWeight: FontWeight.bold)
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              SizedBox(
                height: 45,
                width: 330,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red.shade400,
                  ),
                  child: RichText(
                    text: TextSpan(
                     children:[
                       TextSpan(
                         text: "GENERATE OTP",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)
                       ),
                       TextSpan(text: " (ONE TIME PASSWORD)",style: TextStyle(fontSize: 15) ),
                     ]
                    ),
                  ),
                  onPressed: () async {
                    auth.verifyPhoneNumber(
                      phoneNumber: "${contryCode.text+phone}",
                        verificationCompleted: (PhoneAuthCredential credential){},
                        verificationFailed: (FirebaseAuthException e){},
                        codeSent: (String verificationId, int? token){
                        Get.to(OtpPage(verificationId: verificationId));
                        },
                        codeAutoRetrievalTimeout: ( String verificationId){}
                    );

                  },
                ),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("OR,",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),),
                  Text("Connect using social accounts",style: TextStyle(color: Colors.grey,fontSize: 16),),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Padding(
                    padding:EdgeInsets.only(left: width*0.25),
                    child: Column(
                      children: [
                        InkWell(
                          child: Container(
                            width: width*0.17,
                            height: height*0.07,
                            decoration: BoxDecoration(
                              border: Border.all(width: 1,color: Colors.black),
                              borderRadius: BorderRadius.circular(5)
                            ),
                            child: Image.asset("Assets/images/icons8-google-48 (1).png",height: 6,),
                          ),
                          onTap: () async{
                            // _googleSignIn.signIn().then((value) {
                            //   String userName=value!.displayName!;
                            //   String profilePic=value!.photoUrl!;
                            // });
                           await googleLogin();
                           setState(() {

                           });
                          },
                        ),
                        SizedBox(height: 5,),
                        Text("Google",style: TextStyle(fontSize: 11),),
                      ],
                    ),
                  ),
                  SizedBox(width: 50,),
                  Column(
                    children: [
                      InkWell(
                        child: Container(
                          width: width*0.17,
                          height: height*0.07,
                          decoration: BoxDecoration(
                              border: Border.all(width: 1,color: Colors.black),
                              borderRadius: BorderRadius.circular(5)
                          ),
                          child: Image.asset("Assets/images/icons8-facebook-48 (1).png",height: 10,),
                        ),
                        onTap: (){},
                      ),
                      SizedBox(height: 5,),
                      Text("Facebook",style: TextStyle(fontSize: 11),),
                    ],
                  ),
                ],
              ),
              TextButton(onPressed: (){}, child:   Text("Terms and Conditions and Privacy Policy"),),
              Padding(
                padding:EdgeInsets.only(top: height*0.2),
                child:Divider(
                  thickness:1,
                  color: Colors.black,
                ),
              ),
              TextButton(onPressed:(){Get.to(ReferralPage());}, child: Text("HAVE A REFERRAL CODE?",style: TextStyle(fontSize: 18,color: Colors.indigo,fontWeight: FontWeight.bold),))
            ],
          ),
        ),
      ),
    );
  }
  // Future<UserCredential> signInWithGoogle() async {
  //   // Trigger the authentication flow
  //   final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
  //
  //   // Obtain the auth details from the request
  //   final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;
  //
  //   // Create a new credential
  //   final credential = GoogleAuthProvider.credential(
  //     accessToken: googleAuth?.accessToken,
  //     idToken: googleAuth?.idToken,
  //   );
  //
  //   // Once signed in, return the UserCredential
  //   return await FirebaseAuth.instance.signInWithCredential(credential);
  // }
  googleLogin() async {
    print("googleLogin method Called");
    GoogleSignIn _googleSignIn = GoogleSignIn();
    try {
      var reslut = await _googleSignIn.signIn();
      if (reslut == null) {
        return;
      }

      final userData = await reslut.authentication;
      final credential = GoogleAuthProvider.credential(
          accessToken: userData.accessToken, idToken: userData.idToken);
      var finalResult =
      await FirebaseAuth.instance.signInWithCredential(credential);
      print("Result $reslut");
      print(reslut.displayName);
      print(reslut.email);
      print(reslut.photoUrl);

    } catch (error) {
      print(error);
    }
  }

  Future<void> logout() async {
    await GoogleSignIn().disconnect();
    FirebaseAuth.instance.signOut();
  }


}
