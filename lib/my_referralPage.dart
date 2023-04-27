import 'package:flutter/material.dart';

class ReferralPage extends StatefulWidget {
  const ReferralPage({Key? key}) : super(key: key);

  @override
  State<ReferralPage> createState() => _ReferralPageState();
}

class _ReferralPageState extends State<ReferralPage> {
  TextEditingController contryCodde=TextEditingController();
  String phonne="";

  void initState(){
    super.initState();
    contryCodde.text="+91";
  }
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    var width=size.width;
    var height=size.height;
    return Scaffold(
      body:Container(
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
                          controller: contryCodde,
                          decoration: InputDecoration(border:InputBorder.none),
                        ),
                      ),
                      Text("|",style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.bold),),
                      SizedBox(width: 10),
                      Expanded(
                        child: TextField(
                          keyboardType: TextInputType.phone,
                          onChanged: (value) {
                            phonne=value;
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
              Container(
                width: width*0.9,
                height: height*0.06,
                child: Padding(
                  padding:EdgeInsets.only(left: width*0.04),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Enter referral code ( optional )",
                        hintStyle: TextStyle(color: Colors.grey,fontSize: 17),
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(width: 1,color: Colors.black)
                ),
              ),
              SizedBox(height: 30,),
              SizedBox(
                height: 45,
                width: 360,
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
                  onPressed: (){
                   // Get.to(OtpPage());
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
