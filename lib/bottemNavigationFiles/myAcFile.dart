import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../my_homePage.dart';
import 'helpPage.dart';

class MyAccount extends StatefulWidget {
  const MyAccount({Key? key}) : super(key: key);

  @override
  State<MyAccount> createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {
  List<Map<String,dynamic>> names=[
    {
      "lead":"My Bookings",
      "Trail":Icons.arrow_forward_ios_outlined,
    },
    {
      "lead":"Wallet",
      "Trail":Icons.arrow_forward_ios_outlined,
    },
    {
      "lead":"Cards",
      "Trail":Icons.arrow_forward_ios_outlined,
    },
    {
      "lead":"Co-Passengers(Bus)",
      "Trail":Icons.arrow_forward_ios_outlined,
    },
    {
      "lead":"Refer & Earn",

    },
    {
      "lead":"Offers",

    },
    {
      "lead":"Help",

    },
    {
      "lead":"Call Support",

    },
    {
      "lead":"About Us",

    },
    {
      "lead":"Settings",

    },
    {
      "lead":"Feedbacks",

    },
    {
      "lead":"Logout",

    },
  ];
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
        title: Text("My Account",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),),
        centerTitle: true,
      ),
      body: Container(
        width: width,
        height: height,
        color: Colors.grey.shade300,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Padding(
                padding:EdgeInsets.only(top: height*0.01),
                child: Container(
                  width: width*0.95,
                  height: height*0.08,
                    color: Colors.white,
                    child: ListTile(
                      leading: Icon(Icons.account_circle_outlined),
                      title: Text("Male"),
                      subtitle: Text("+91-XXXXXXXX"),
                      trailing:Icon(Icons.arrow_forward_ios_outlined,size: 15,),
                    ),
                ),
              ),
              Padding(
                padding:EdgeInsets.only(top: height*0.01),
                child: Card(
                  child: Container(
                    width: width*0.95,
                    height: height*0.77,
                    color: Colors.white,
                    child: ListView.separated(
                      itemCount: names.length,
                        itemBuilder:(context, index)=>ListTile(
                          leading: Text("${names[index]["lead"].toString()}",style: TextStyle(color: Colors.black54),),
                          trailing:Icon(Icons.arrow_forward_ios_outlined,size: 15,),
                        ),
                      separatorBuilder: (context, index){
                        return Divider(height:1,thickness: 1,);
                      },
                    ),
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
