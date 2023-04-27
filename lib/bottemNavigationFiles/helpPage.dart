import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../my_homePage.dart';
import 'myAcFile.dart';

class MyHelpPage extends StatefulWidget {
  const MyHelpPage({Key? key}) : super(key: key);

  @override
  State<MyHelpPage> createState() => _MyHelpPageState();
}

class _MyHelpPageState extends State<MyHelpPage> {
  int myIndex=0;
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    var width=size.width;
    var height=size.height;

    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        fixedColor: Colors.red,
        selectedIconTheme: IconThemeData( color: Colors.red),
        showSelectedLabels: true,
        type: BottomNavigationBarType.fixed,
        onTap: (index){
          setState(() {
            myIndex=index;
          });
        },
        currentIndex: myIndex,
        items: [
          BottomNavigationBarItem(
              icon: InkWell(
                  onTap: (){ Get.to(HomePageScreen());},
                  child: Icon(Icons.home)),
              label: "Home",
              backgroundColor: Colors.red
          ),
          BottomNavigationBarItem(
            icon: InkWell(
                onTap:(){},
                child: Icon(Icons.my_library_books_sharp)),
            label: "My Bookings",
          ),
          BottomNavigationBarItem(
            icon: InkWell(
                onTap:(){
                  Get.to(MyHelpPage());
                },
                child: Icon(Icons.headset_mic_outlined)),
            label: "Help",
          ),
          BottomNavigationBarItem(
            icon: InkWell(
                onTap:(){
                  Get.to(MyAccount());
                },
                child: Icon(Icons.account_circle)),
            label: "My Account",
          ),
        ],
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Text("red:Buddy",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.red),),
           Padding(
             padding:EdgeInsets.only(left: width*0.53),
             child: Icon(Icons.translate,color: Colors.black,size: 15,),
           ),
            Text("English",style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.w300),),
          ],
        ),
      ),
      body: Container(
        width: width,
        height: height,
        color: Colors.grey.shade200,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding:  EdgeInsets.only(top: height*0.02),
                child: Container(
                  width: width,
                  height: height*0.05,
                  color: Colors.white,
                  child: ListTile(
                    leading: Icon(Icons.chat_rounded,size: 19,),
                    title: Text("View all isssues",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                    trailing: Icon(Icons.arrow_forward_ios_outlined,size: 15,),
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(top: height*0.02),
                child: Container(
                  width: width,
                  height: height*0.05,
                  color: Colors.white,
                  child: ListTile(
                    leading: Icon(Icons.list_alt_sharp,size: 19,),
                    title: Text("View all bookings",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                    trailing: Icon(Icons.arrow_forward_ios_outlined,size: 15,),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: height*0.02,left: width*0.05),
                child: Row(
                  children: [
                    Text("FAQs",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                    Text("(Select a Help Topic)",style: TextStyle(fontSize: 15,color: Colors.black45),)
                  ],
                ),
              ),
              Padding(
                padding:EdgeInsets.only(top: height*0.02),
                child: Container(
                  width: width,
                  height: height*0.1,
                  color: Colors.white,
                  child: Row(
                    children: [
                      InkWell(
                        onTap: (){},
                        child: Padding(
                          padding:EdgeInsets.only(left: width*0.1),
                          child: Container(
                            width: width*0.2,
                            height: height*0.1,
                            color: Colors.white,
                            child: Column(
                              children: [
                                Container(
                                  width: width*0.2,
                                  height: height*0.06,
                                  color: Colors.white,
                                  child: Image.asset("Assets/images/icons8-bus-64.png"),
                                ),

                                Padding(
                                  padding:  EdgeInsets.only(top: height*0.01),
                                  child: Text("Bus Tickets",style: TextStyle(fontSize: 12),),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: (){},
                        child: Padding(
                          padding:  EdgeInsets.only(left: width*0.1),
                          child: Container(
                            width: width*0.2,
                            height: height*0.1,
                            color: Colors.white,
                            child: Column(
                              children: [
                                Container(
                                  width: width*0.2,
                                  height: height*0.06,
                                  color: Colors.white,
                                  child: Image.asset("Assets/images/icons8-railcar-50.png"),
                                ),
                                Padding(
                                  padding:  EdgeInsets.only(top: height*0.01),
                                  child: Text("Train Tickets",style: TextStyle(fontSize: 12),),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(left: width*0.1),
                        child: Container(
                          width: width*0.2,
                          height: height*0.1,
                          color: Colors.white,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              Text("rYde",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                              Text("Cabs &\nBus Hire",style: TextStyle(fontSize: 12),)
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding:EdgeInsets.only(right: width*0.65,top: height*0.01),
                child: Text("Other topics",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black),),
              ),
              Padding(
                padding:EdgeInsets.only(top: height*0.02),
                child: Container(
                  width: width,
                  height: height*0.5,
                  color: Colors.white,
                 child: Column(
                   children: [
                     ListTile(
                       leading: Icon(Icons.bus_alert,color: Colors.red,),
                       title:Text("New bus booking help",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),) ,
                       subtitle:Text("Bus availability/ Child fare,Luggage.") ,
                       trailing: Icon(Icons.arrow_forward_ios_outlined,size: 15,),
                     ),
                     Divider(
                       color: Colors.grey,
                       height: 10,
                     ),
                     ListTile(
                       leading: Icon(Icons.settings,color: Colors.red,),
                       title: Text("Technical Issues",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                       subtitle:Text("Need some technical help?") ,
                       trailing: Icon(Icons.arrow_forward_ios_outlined,size: 15,),
                     ),
                     Divider(
                       color: Colors.grey,
                       height: 10,
                     ),
                     ListTile(
                       leading: Icon(Icons.mobile_screen_share_outlined,color: Colors.red,),
                       title: Text("redBus Referral Help",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                       subtitle: Text("Need help with redBus referral programme"),
                       trailing: Icon(Icons.arrow_forward_ios_outlined,size: 15,),
                     ),
                     Divider(
                       color: Colors.grey,
                       height: 10,
                     ),
                     ListTile(
                       leading: Icon(Icons.local_offer_outlined,color: Colors.red,),
                       title: Text("Offers",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                       subtitle:Text("Need help with offers?") ,
                       trailing: Icon(Icons.arrow_forward_ios_outlined,size: 15,),
                     ),
                     Divider(
                       color: Colors.grey,
                       height: 10,
                     ),
                     ListTile(
                       leading: Icon(Icons.wallet_membership_outlined,color: Colors.red,),
                       title: Text("New bus booking help",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                       subtitle:Text("Need any help with redBus wallet?") ,
                       trailing: Icon(Icons.arrow_forward_ios_outlined,size: 15,),
                     ),
                   ],
                 ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
