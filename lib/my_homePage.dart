import 'package:csc_picker/csc_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:what/places_name.dart';

import 'bottemNavigationFiles/helpPage.dart';
import 'bottemNavigationFiles/myAcFile.dart';
import 'my_loginPage.dart';
import 'my_referralPage.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> with TickerProviderStateMixin{

  bool onTap=false;
  bool onPress=false;
  bool onClick=false;
  bool onButtn=false;

  bool tap1=false;
  bool tap2=false;
  bool tap3=false;
  bool tap4=false;

  bool isScl=false;
  bool isPcl=false;
  bool isTcl=false;

  bool flt=false;


  bool onpsd=false;
  int myIndex=0;
  DateTime _date=DateTime.now();
  void showDate(){
    showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2060),
    ).then((value) {
      setState(() {
        _date=value!;
      });
    });
  }
  int _value=0;

  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    var width=size.width;
    var height=size.height;
    TabController tabController=TabController(length: 3, vsync: this);
    TabController ttabController= TabController(length: 3, vsync: this);
    TabController tab= TabController(length: 3, vsync: this);

    return  Scaffold(
      floatingActionButton: FloatingActionButton.extended(
          onPressed:(){},
          elevation: 10,
          backgroundColor: Colors.red,
          label: Text("Search"),
        icon: Icon(Icons.mic),
      ),
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
      body:NestedScrollView(
        headerSliverBuilder:
            (context, innerBoxIsScrolled)=>[
          SliverAppBar(
               backgroundColor: Colors.white, 
            automaticallyImplyLeading: false,
          ),
        ] ,
      body: Column(
        children: [
          Container(
            width: width*1,
            height: height*0.07,
            color:  Colors.white,
            child: TabBar(
              indicatorColor: Colors.white,
              controller: tabController,
              tabs: [
                Tab(
                 child: Container(
                     width: width*0.3,
                   height: height,
                   decoration: BoxDecoration(
                     
                       borderRadius: BorderRadius.circular(12),
                       border:Border.all(width: 1,color: Colors.grey)
                   ),
                     child: Column(
                       children: [
                         Image.asset("Assets/images/icons8-bus-64-removebg-preview.png",height: 30,),
                        Text("Bus Tickets",style: TextStyle(fontSize: 9,color: isScl?Colors.white: Colors.black),),
                       ],
                     ),
                 ),
                ),
                    Tab(
                      child: Container(
                        width: width*0.3,
                        height: height,
                        decoration: BoxDecoration(
                          
                            borderRadius: BorderRadius.circular(12),
                            border:Border.all(width: 1,color: Colors.grey)
                        ),
                        child: Column(
                          children: [
                            Text("rYde",style: TextStyle(fontSize: 27,color: Colors.black),),
                            Text("Cab/Bus rental",style: TextStyle(fontSize: 9,color: Colors.black),),
                          ],
                        ),
                      ),
                    ),
                Tab(
                  child: Container(
                    width: width*0.3,
                    height: height,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border:Border.all(width: 1,color: Colors.grey)
                    ),
                    child: Column(
                      children: [
                        Image.asset("Assets/images/icons8-train-64-removebg-preview.png",height: 30,),
                        Text("Trains Tickets",style: TextStyle(fontSize: 9,color:isPcl? Colors.white:Colors.black),),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: tabController,
              children: [
                Container(
                  width: width,
                  height: height,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          width: width,
                          height: height*0.4,
                          color: Colors.red.shade400,
                          child: Column(
                            children: [
                              Padding(
                                padding:EdgeInsets.only(top: height*0.02),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text("BUS TICKETS",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),),
                                    Padding(
                                      padding:EdgeInsets.only(left: width*0.45),
                                      child: Container(
                                        height: height*0.065,
                                        width: width*0.17,
                                        //color: Colors.green,
                                        child: Image.asset("Assets/images/95c5bf24-7f10-4fec-8a30-d836a6d8f12a-removebg-preview.png",fit: BoxFit.fill,),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: width*0.9,
                                height:height*0.28,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(11),
                                ),
                                child: Column(
                                  children: [
                                    InkWell(
                                onTap:(){

                                      Get.to(Places());
                                },
                                      child: ListTile(
                                        leading:Image.asset("Assets/images/icons8-get-on-bus-50.png",height: 25,) ,
                                        title: Text("From",style: TextStyle(color: Colors.grey),),
                                      ),
                                    ),
                                    Divider(
                                        color:Colors.grey,
                                      height: 3,
                                    ),
                                    InkWell(
                                      onTap:(){
                                        Get.to(Places());
                                      },
                                      child: ListTile(
                                        leading:Image.asset("Assets/images/icons8-get-off-bus-50.png",height: 25,) ,
                                        title:  Text("To",style: TextStyle(color: Colors.grey),),
                                      ),
                                    ),
                                    Divider(
                                      color:Colors.grey,
                                      height: 3,
                                    ),
                                    InkWell(
                                        onTap:showDate,
                                      child: ListTile(
                                        leading:Icon(Icons.calendar_month),
                                        title: Text(_date.toString()),
                                      ),
                                    ),
                                    Container(
                                      width: width*0.84,
                                      height: height*0.053,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(primary: Colors.red.shade400),
                                        child: Text("SEARCH BUSES",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),),
                                        onPressed: (){},
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            SizedBox(width: 15,),
                            Text("OFFERS",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                            
                            Padding(
                              padding:  EdgeInsets.only(left: width*0.6),
                              child: TextButton(onPressed: (){}, child:   Text("VIEW ALL",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.indigo),),),
                            )
                          ],
                        ),
                        Padding(
                          padding:EdgeInsets.only(right: width*0.14),
                          child: Text(" Get best deals with great discounts and offers",style: TextStyle(fontSize: 14,color: Colors.grey),),
                        ),

                        Padding(
                          padding:EdgeInsets.only(top:height*0.01),
                          child: Row(
                            children: [
                             
                              Padding(
                                padding:EdgeInsets.only(left: width*0.05),
                                child: Container(
                                  width: width*0.14,
                                  height: height*0.033,
                                  decoration: BoxDecoration(
                                    color: onTap?Colors.red.shade400: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(width: 1,color: Colors.red)
                                  ),
                                  child:TextButton(
                                    child: Text("All",style: TextStyle(fontSize:10,color:onTap?Colors.white:Colors.black,fontWeight:onTap?FontWeight.bold:FontWeight.normal),),
                                    onPressed: (){
                                      onTap=!onTap;
                                     setState(() {

                                     });
                                    },
                                  ),
                                ),
                              ),
                              Padding(
                                padding:  EdgeInsets.only(left: width*0.03),
                                child: Container(
                                  width: width*0.16,
                                  height: height*0.033,
                                  decoration: BoxDecoration(
                                      color: onClick?Colors.red.shade400: Colors.white,
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(width: 1,color: Colors.red)
                                  ),
                                  child:TextButton(
                                    child: Text("Bus",style: TextStyle(fontSize:10,color:onClick?Colors.white:Colors.black,fontWeight:onClick?FontWeight.bold:FontWeight.normal),),
                                    onPressed: (){
                                      onClick=!onClick;
                                      setState(() {

                                      });
                                    },
                                  ),
                                ),
                              ),

                              Padding(
                                padding:EdgeInsets.only(left: width*0.03),
                                child: Container(
                                  width: width*0.2,
                                  height: height*0.036,
                                  decoration: BoxDecoration(
                                      color: onButtn?Colors.red.shade400: Colors.white,
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(width: 1,color: Colors.red)
                                  ),
                                  child:TextButton(
                                    child: Text("Train",style: TextStyle(fontSize:12,color:onButtn?Colors.white:Colors.black,fontWeight:onButtn?FontWeight.bold:FontWeight.normal),),
                                    onPressed: (){
                                      onButtn=!onButtn;
                                      setState(() {

                                      });
                                    },
                                  ),
                                ),
                              ),

                              Padding(
                                padding:  EdgeInsets.only(left:width*0.03),
                                child: Container(
                                  width: width*0.2,
                                  height: height*0.036,
                                  decoration: BoxDecoration(
                                      color: onPress?Colors.red.shade400: Colors.white,
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(width: 1,color: Colors.red)
                                  ),
                                  child:TextButton(
                                    child: Text("Cabs",style: TextStyle(fontSize:12,color:onPress?Colors.white:Colors.black,fontWeight:onPress?FontWeight.bold:FontWeight.normal),),
                                    onPressed: (){
                                      onPress=!onPress;
                                      setState(() {
                                      });
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        
                        Padding(
                          padding:  EdgeInsets.only(top:height*0.02),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                               
                               Padding(
                                 padding:EdgeInsets.only(left:width*0.05),
                                 child: InkWell(
                                   child: Container(
                                     width: width*0.85,
                                     height: height*0.25,
                                     child: ClipRRect(
                                       borderRadius: BorderRadius.circular(8),
                                       child: Image.asset("Assets/images/148f736d3a18efeebd1acb47e12201de_fgraphic.png",fit: BoxFit.fill,),
                                     ),
                                   ),
                                   onTap: (){},
                                 ),
                               ),
                               
                                Padding(
                                  padding:EdgeInsets.only(left:width*0.05),
                                  child: InkWell(
                                    child: Container(
                                      width: width*0.85,
                                      height: height*0.25,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(8),
                                        child: Image.asset("Assets/images/redbus-coupons.jpg",fit: BoxFit.fill,),
                                      ),
                                    ),
                                    onTap: (){},
                                  ),
                                ),
                               
                                Padding(
                                  padding:EdgeInsets.only(left:width*0.05),
                                  child: InkWell(
                                    child: Container(
                                      width: width*0.85,
                                      height: height*0.25,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(8),
                                        child: Image.asset("Assets/images/1576528649redbus-offers-coupon-code-52.jpg",fit: BoxFit.fill,),
                                      ),
                                    ),
                                    onTap: (){},
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      
                        Padding(
                          padding:EdgeInsets.only(top:height*0.02),
                          child: Container(
                            width: width,
                            height: height*0.0015,
                            color: Colors.grey,
                          ),
                        ),
                        
                        Padding(
                          padding:EdgeInsets.only(right: width*0.5,top:height*0.02),
                          child: Text("EXCLUSIV PARTNERS",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),),
                        ),
                       
                        Padding(
                          padding:EdgeInsets.only(top:height*0.02),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                Padding(
                                  padding:EdgeInsets.only(left:width*0.05),
                                  child: Container(
                                    width: width*0.8,
                                    height: height*0.15,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: Image.asset("Assets/images/EQqNVrkXkAA3Dfo.jpg",fit: BoxFit.fill,),
                                    ),
                                  ),
                                ),
                             
                                Padding(
                                  padding:EdgeInsets.only(left:width*0.05),
                                  child: Container(
                                    width: width*0.8,
                                    height: height*0.15,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: Image.asset("Assets/images/148f736d3a18efeebd1acb47e12201de_fgraphic.png",fit: BoxFit.fill,),
                                    ),
                                  ),
                                ),
                               
                                Padding(
                                  padding:EdgeInsets.only(left:width*0.05),
                                  child: Container(
                                    width: width*0.8,
                                    height: height*0.15,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: Image.asset("Assets/images/EQqNVrkXkAA3Dfo.jpg",fit: BoxFit.fill,),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        
                        Padding(
                          padding:EdgeInsets.only(top: height*0.04),
                          child: Container(
                            width: width,
                            height: height*0.0015,
                            color: Colors.grey,
                          ),
                        ),
                        
                        Padding(
                          padding:EdgeInsets.only(top: height*0.04),
                          child: Row(
                            children: [
                             
                              Padding(
                                padding:  EdgeInsets.only(left: width*0.05),
                                child: Text("WHAT'S ",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                              ),
                              Container(
                                width: width*0.15,
                                height: height*0.025,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(2),
                                color: Colors.green
                              ),
                                child: Center(child: Text("NEW",style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.bold ),)),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding:EdgeInsets.only(right: width*0.33),
                          child: Text("Discover new features and products",style: TextStyle(color: Colors.grey,fontSize: 13),),
                        ),
                      
                        Padding(
                          padding:EdgeInsets.only(top:height*0.03),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                Padding(
                                  padding:  EdgeInsets.only(left: width*0.05),
                                  child: Container(
                                    width: width*0.7,
                                    height: height*0.18,
                                    decoration: BoxDecoration(
                                      color: Colors.indigo.shade200,
                                      gradient:LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                        colors: [
                                          Colors.indigo.shade200,
                                          Colors.grey.shade200
                                        ]
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Stack(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(top: height*0.02),
                                          child: Row(
                                            children: [
                                              SizedBox(width: 20,),
                                              Text("Flexi",style: TextStyle(color: Colors.indigo.shade400,fontSize: 15,fontWeight: FontWeight.bold),),
                                              Text("Ticket",style: TextStyle(fontSize: 15),),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:EdgeInsets.only(top: height*0.05,left: width*0.045),
                                          child: Text("Get amazing benefits\non Date Change &\nCancellation",style: TextStyle(color: Colors.black),),
                                        ),
                                        Padding(
                                          padding:EdgeInsets.only(top: height*0.1,left: width*0.02),
                                          child: Row(
                                          children: [
                                            TextButton(onPressed: (){}, child: Text("Know More",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.indigo),)),
                                            Icon(Icons.arrow_forward,color: Colors.indigo,),
                                          ],
                                          ),
                                        ),
                                        Padding(
                                          padding:EdgeInsets.only(left: width*0.45,top: height*0.05),
                                          child: Column(
                                            children: [
                                              Text("FREE",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.indigo),),
                                              Text("DATE",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.indigo),),
                                              Text("CHANGE",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.indigo),),
                                              Text("AT NO EXTRA RATE",style: TextStyle(fontSize: 5,fontWeight: FontWeight.bold,color: Colors.indigo),),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),

                                Padding(
                                  padding:  EdgeInsets.only(left: width*0.05),
                                  child: Container(
                                    width: width*0.7,
                                    height: height*0.18,
                                    decoration: BoxDecoration(
                                      color: Colors.indigo.shade200,
                                      gradient:LinearGradient(
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight,
                                          colors: [
                                            Colors.indigo.shade200,
                                            Colors.grey.shade200
                                          ]
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Stack(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(top: height*0.02),
                                          child: Row(
                                            children: [
                                              SizedBox(width: 20,),
                                              Text("Flexi",style: TextStyle(color: Colors.indigo.shade400,fontSize: 15,fontWeight: FontWeight.bold),),
                                              Text("Ticket",style: TextStyle(fontSize: 15),),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:EdgeInsets.only(top: height*0.05,left: width*0.045),
                                          child: Text("Get amazing benefits\non Date Change &\nCancellation",style: TextStyle(color: Colors.black),),
                                        ),
                                        Padding(
                                          padding:EdgeInsets.only(top: height*0.1,left: width*0.02),
                                          child: Row(
                                            children: [
                                              TextButton(onPressed: (){}, child: Text("Know More",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.indigo),)),
                                              Icon(Icons.arrow_forward,color: Colors.indigo,),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:EdgeInsets.only(left: width*0.45,top: height*0.05),
                                          child: Column(
                                            children: [
                                              Text("FREE",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.indigo),),
                                              Text("DATE",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.indigo),),
                                              Text("CHANGE",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.indigo),),
                                              Text("AT NO EXTRA RATE",style: TextStyle(fontSize: 5,fontWeight: FontWeight.bold,color: Colors.indigo),),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),

                                Padding(
                                  padding:  EdgeInsets.only(left: width*0.05),
                                  child: Container(
                                    width: width*0.7,
                                    height: height*0.18,
                                    decoration: BoxDecoration(
                                      color: Colors.indigo.shade200,
                                      gradient:LinearGradient(
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight,
                                          colors: [
                                            Colors.indigo.shade200,
                                            Colors.grey.shade200
                                          ]
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Stack(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(top: height*0.02),
                                          child: Row(
                                            children: [
                                              SizedBox(width: 20,),
                                              Text("Flexi",style: TextStyle(color: Colors.indigo.shade400,fontSize: 15,fontWeight: FontWeight.bold),),
                                              Text("Ticket",style: TextStyle(fontSize: 15),),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:EdgeInsets.only(top: height*0.05,left: width*0.045),
                                          child: Text("Get amazing benefits\non Date Change &\nCancellation",style: TextStyle(color: Colors.black),),
                                        ),
                                        Padding(
                                          padding:EdgeInsets.only(top: height*0.1,left: width*0.02),
                                          child: Row(
                                            children: [
                                              TextButton(onPressed: (){}, child: Text("Know More",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.indigo),)),
                                              Icon(Icons.arrow_forward,color: Colors.indigo,),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:EdgeInsets.only(left: width*0.45,top: height*0.05),
                                          child: Column(
                                            children: [
                                              Text("FREE",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.indigo),),
                                              Text("DATE",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.indigo),),
                                              Text("CHANGE",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.indigo),),
                                              Text("AT NO EXTRA RATE",style: TextStyle(fontSize: 5,fontWeight: FontWeight.bold,color: Colors.indigo),),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),

                                Padding(
                                  padding:  EdgeInsets.only(left: width*0.05),
                                  child: Container(
                                    width: width*0.7,
                                    height: height*0.18,
                                    decoration: BoxDecoration(
                                      color: Colors.indigo.shade200,
                                      gradient:LinearGradient(
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight,
                                          colors: [
                                            Colors.indigo.shade200,
                                            Colors.grey.shade200
                                          ]
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Stack(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(top: height*0.02),
                                          child: Row(
                                            children: [
                                              SizedBox(width: 20,),
                                              Text("Flexi",style: TextStyle(color: Colors.indigo.shade400,fontSize: 15,fontWeight: FontWeight.bold),),
                                              Text("Ticket",style: TextStyle(fontSize: 15),),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:EdgeInsets.only(top: height*0.05,left: width*0.045),
                                          child: Text("Get amazing benefits\non Date Change &\nCancellation",style: TextStyle(color: Colors.black),),
                                        ),
                                        Padding(
                                          padding:EdgeInsets.only(top: height*0.1,left: width*0.02),
                                          child: Row(
                                            children: [
                                              TextButton(onPressed: (){}, child: Text("Know More",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.indigo),)),
                                              Icon(Icons.arrow_forward,color: Colors.indigo,),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:EdgeInsets.only(left: width*0.45,top: height*0.05),
                                          child: Column(
                                            children: [
                                              Text("FREE",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.indigo),),
                                              Text("DATE",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.indigo),),
                                              Text("CHANGE",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.indigo),),
                                              Text("AT NO EXTRA RATE",style: TextStyle(fontSize: 5,fontWeight: FontWeight.bold,color: Colors.indigo),),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 40,),
                        Container(
                          width: width,
                          height: height*0.0015,
                          color: Colors.grey,
                        ),
                        Padding(
                          padding:EdgeInsets.only(right: width*0.25,top: height*0.02),
                          child: Text("PERFER TO TRAVEL ON RTC BUSES?",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),),
                        ),
                        Padding(
                          padding:EdgeInsets.only(right: width*0.2),
                          child: Text("Book RTC buses on redBus to your place of\ntravel within minuter",style: TextStyle(color: Colors.grey,fontSize: 14),),
                        ),
                        SizedBox(height: 10,),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Container(
                                width: width*0.3,
                                height: height*0.2,
                                child: Column(
                                  children: [
                                    SizedBox(height: 5,),
                                    Container(
                                      width: width*0.15,
                                      height: height*0.07,
                                      child: Image.asset("Assets/images/rsrtc-logo-263x300-removebg-preview.png",fit: BoxFit.fill,),
                                    ),
                                    SizedBox(height: 5,),
                                    Text("RSRTC",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),),
                                    Text("2230+ Routes",style: TextStyle(fontSize: 12,color: Colors.grey),),
                                    Text("4700+ Buses",style: TextStyle(fontSize: 12,color: Colors.grey),),
                                  ],
                                ),
                              ),
                            //  SizedBox(width: 10,),
                              Container(
                                width: width*0.3,
                                height: height*0.2,
                                child: Column(
                                  children: [
                                    SizedBox(height: 5,),
                                    Container(
                                      width: width*0.15,
                                      height: height*0.07,
                                      child: Image.asset("Assets/images/download-removebg-preview.png",fit: BoxFit.fill,),
                                    ),
                                    SizedBox(height: 5,),
                                    Text("UPSRTC",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),),
                                    Text("12870+ Routes",style: TextStyle(fontSize: 12,color: Colors.grey),),
                                    Text("12420+ Buses",style: TextStyle(fontSize: 12,color: Colors.grey),),
                                  ],
                                ),
                              ),
                              Container(
                                width: width*0.3,
                                height: height*0.2,
                                child: Column(
                                  children: [
                                    SizedBox(height: 5,),
                                    Container(
                                      width: width*0.15,
                                      height: height*0.07,
                                      child: Image.asset("Assets/images/download__1_-removebg-preview.png",fit: BoxFit.fill,),
                                    ),
                                    SizedBox(height: 5,),
                                    Text("HRTC",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),),
                                    Text("2850+ Routes",style: TextStyle(fontSize: 12,color: Colors.grey),),
                                    Text("3120+ Buses",style: TextStyle(fontSize: 12,color: Colors.grey),),
                                  ],
                                ),
                              ),
                              Container(
                                width: width*0.3,
                                height: height*0.2,
                                child: Column(
                                  children: [
                                    SizedBox(height: 5,),
                                    Container(
                                      width: width*0.15,
                                      height: height*0.07,
                                      child: Image.asset("Assets/images/download-removebg-preview (1).png",fit: BoxFit.fill,),
                                    ),
                                    SizedBox(height: 5,),
                                    Text("GRTC",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),),
                                    Text("282750+ Routes",style: TextStyle(fontSize: 12,color: Colors.grey),),
                                    Text("8700+ Buses",style: TextStyle(fontSize: 12,color: Colors.grey),),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),

                      ],
                    ),
                  ),
                ),

                            // FOR CAB/BUS RENTAL....................

                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      Container(
                        width: width,
                        height: height*0.5,
                        child: Column(
                          children: [
                            SizedBox(height: 10,),
                            Container(
                              width: width*0.95,
                              height: height*0.06,
                              child: TabBar(
                                indicator: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(width: 1,color: Colors.red),
                                  color: Colors.red.shade100,
                                ),
                                controller: tab,
                                isScrollable: true,
                                labelPadding: EdgeInsets.symmetric(horizontal: 30),
                                tabs: [
                                    Container(
                                     width: width*0.15,
                                       height: height*0.07,
                                        child: Tab(child: Text("Outstation",style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold,color: Colors.black),),)),
                                  Container(
                                      width: width*0.15,
                                      height: height*0.07,
                                      child: Tab(child: Text("Hourly\nRental",style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold,color:onpsd?Colors.black:Colors.red),),)),
                                  Container(
                                      width: width*0.15,
                                      height: height*0.07,
                                      child: Tab(child: Text("Airport Transfer",style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold,color: Colors.black),),)),
                                ],
                              ),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                                  boxShadow: [
                                  BoxShadow(
                                  offset: Offset(5,-2),
                              blurRadius: 5,
                              color: Colors.grey,
                            ),
                    BoxShadow(
                      offset: Offset(5,-3),
                      blurRadius: 6,
                      color: Colors.white,
                    ),
                                  ]
                              ),
                            ),
                           
                           Padding(
                             padding:EdgeInsets.only(top: height*0.02),
                             child: Container(
                               width: width*0.95,
                               height: height*0.38,
                              //color: Colors.red,
                               child: TabBarView(
                                 controller: tab,
                                   children:[
                                     Card(
                                       elevation: 10,
                                       child: Column(
                                         children: [
                                          ListTile(
                                            leading: Image.asset("Assets/images/icons8-get-on-bus-50.png",height: 25,),
                                              title: TextField(
                                                decoration: InputDecoration(
                                                  border: InputBorder.none,
                                                    hintText: "Pickup location"
                                                ),
                                              ),
                                          ),
                                           Divider(
                                             height:height*0.001,
                                              color: Colors.grey,
                                           ),
                                           ListTile(
                                             leading: Image.asset("Assets/images/icons8-get-off-bus-50.png",height: 25,),
                                             title: TextField(
                                               decoration: InputDecoration(
                                                   border: InputBorder.none,
                                                   hintText: "Destination location"
                                               ),
                                             ),
                                           ),
                                           Divider(
                                             height:height*0.001,
                                             color: Colors.grey,
                                           ),
                                           ListTile(
                                             leading: Icon(Icons.calendar_month),
                                             title: TextField(
                                               decoration: InputDecoration(
                                                   border: InputBorder.none,
                                                   hintText: "Pick up date & time",
                                               ),
                                             ),
                                           ),
                                           Divider(
                                             height:height*0.001,
                                             color: Colors.grey,
                                           ),
                                           ListTile(
                                             leading: Container(
                                               width: width*0.05,
                                                 height: height*0.023,
                                                 decoration: BoxDecoration(
                                                     border: Border.all(width: 2, color: Colors.grey,)
                                                 ),
                                             ),
                                             title: TextField(
                                               decoration: InputDecoration(
                                                 border: InputBorder.none,
                                                 hintText: "I need a round trip",
                                               ),
                                             ),
                                           ),
                                           Divider(
                                             height:height*0.001,
                                             color: Colors.grey,
                                           ),
                                           SizedBox(height: 10,),
                                           Container(
                                             width: width*0.9,
                                             height: height*0.06,
                                               child: ElevatedButton(
                                                 style: ElevatedButton.styleFrom(
                                                     primary: Colors.red,
                                                 ),
                                                 child: Row(
                                                     children: [
                                                       Padding(
                                                         padding:EdgeInsets.only(left:width*0.2),
                                                         child: Icon(Icons.search),
                                                       ),
                                                       Text(" Search rYde",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                                     ],
                                                 ),
                                                   onPressed: (){},
                                               ),
                                               decoration: BoxDecoration(
                                                   borderRadius: BorderRadius.circular(11),
                                                 color: Colors.red,
                                               ),
                                               ),
                                         ],
                                       ),
                                     ),
                                     Card(
                                       elevation: 10,
                                       child: Column(
                                         children: [
                                           Column(
                                             children: [
                                               ListTile(
                                                 leading: Image.asset("Assets/images/icons8-get-on-bus-50.png",height: 25,),
                                                 title: TextField(
                                                   decoration: InputDecoration(
                                                       border: InputBorder.none,
                                                       hintText: "Pickup location"
                                                   ),
                                                 ),
                                               ),
                                               Divider(
                                                 height:height*0.001,
                                                 color: Colors.grey,
                                               ),
                                               ListTile(
                                                 leading: Image.asset("Assets/images/icons8-get-off-bus-50.png",height: 25,),
                                                 title: TextField(
                                                   decoration: InputDecoration(
                                                       border: InputBorder.none,
                                                       hintText: "Destination location"
                                                   ),
                                                 ),
                                               ),
                                               Divider(
                                                 height:height*0.001,
                                                 color: Colors.grey,
                                               ),
                                               ListTile(
                                                 leading: Icon(Icons.calendar_month),
                                                 title: TextField(
                                                   decoration: InputDecoration(
                                                     border: InputBorder.none,
                                                     hintText: "Pick up date & time",
                                                   ),
                                                 ),
                                               ),
                                               Divider(
                                                 height:height*0.001,
                                                 color: Colors.grey,
                                               ),
                                               ListTile(
                                                 leading: Icon(Icons.alarm_on_outlined),
                                                 trailing: IconButton(
                                                     icon:Icon(Icons.expand_more_outlined),
                                                     onPressed: (){},
                                                 ),
                                                 title: TextField(
                                                   decoration: InputDecoration(
                                                     border: InputBorder.none,
                                                     hintText: "Select Package",
                                                   ),
                                                 ),
                                               ),
                                               Divider(
                                                 height:height*0.001,
                                                 color: Colors.grey,
                                               ),
                                               SizedBox(height: 10,),
                                               Container(
                                                 width: width*0.9,
                                                 height: height*0.06,
                                                 child: ElevatedButton(
                                                   style: ElevatedButton.styleFrom(
                                                     primary: Colors.red,
                                                   ),
                                                   child: Row(
                                                     children: [
                                                       Padding(
                                                         padding:EdgeInsets.only(left:width*0.2),
                                                         child: Icon(Icons.search),
                                                       ),
                                                       Text(" Search rYde",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                                     ],
                                                   ),
                                                   onPressed: (){},
                                                 ),
                                                 decoration: BoxDecoration(
                                                   borderRadius: BorderRadius.circular(11),
                                                   color: Colors.red,
                                                 ),
                                               ),
                                             ],
                                           ),
                                         ],
                                       ),
                                     ),
                                     Card(
                                       elevation: 10,
                                       child: Column(
                                         children: [
                                           Column(
                                             children: [
                                               SizedBox(height: 10,),
                                               Row(
                                                   children:[
                                                     SizedBox(width: 40,),
                                                 Container(
                                                     width: width*0.35,
                                                     height: height*0.05,
                                                     child: Row(
                                                       children: [
                                                         Radio(
                                                           value:1,
                                                             groupValue:_value,
                                                             onChanged: (value){
                                                             setState(() {
                                                               value=_value;
                                                             });
                                                             },
                                                         ),
                                                         Padding(
                                                           padding:EdgeInsets.only(right:width*0.001),
                                                           child: Text("From Airport",style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold),),
                                                         ),
                                                       ],
                                                     ),
                                                     decoration: BoxDecoration(
                                                         borderRadius: BorderRadius.circular(8),
                                                         border: Border.all(width:1,color:Colors.black),
                                                     ),

                                                 ),
                                                     SizedBox(width: 10,),
                                                         Container(
                                                       width: width*0.35,
                                                       height: height*0.05,
                                                           child: Row(
                                                             children: [
                                                               Radio(
                                                                 value:1,
                                                                 groupValue:_value,
                                                                 onChanged: (value){
                                                                   setState(() {
                                                                     value=_value;
                                                                   });
                                                                 },
                                                               ),
                                                               Text("To Airpot",style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold),),
                                                             ],
                                                           ),
                                                           decoration: BoxDecoration(
                                                             borderRadius: BorderRadius.circular(8),
                                                             border: Border.all(width:1,color:Colors.black),
                                                           ),
                                                     ),
                                               ]
                                               ),
                                               SizedBox(height: 6,),
                                               Divider(
                                                 height:height*0.001,
                                                 color: Colors.grey,
                                               ),
                                               ListTile(
                                                 leading: Image.asset("Assets/images/icons8-get-on-bus-50.png",height: 25,),
                                                 title: TextField(
                                                   decoration: InputDecoration(
                                                       border: InputBorder.none,
                                                       hintText: "Pickup location"
                                                   ),
                                                 ),
                                               ),
                                               Divider(
                                                 height:height*0.001,
                                                 color: Colors.grey,
                                               ),
                                               ListTile(
                                                 leading: Image.asset("Assets/images/icons8-get-off-bus-50.png",height: 25,),
                                                 title: TextField(
                                                   decoration: InputDecoration(
                                                       border: InputBorder.none,
                                                       hintText: "Destination location"
                                                   ),
                                                 ),
                                               ),
                                               Divider(
                                                 height:height*0.001,
                                                 color: Colors.grey,
                                               ),
                                               ListTile(
                                                 leading: Icon(Icons.calendar_month),
                                                 title: TextField(
                                                   decoration: InputDecoration(
                                                     border: InputBorder.none,
                                                     hintText: "Pick up date & time",
                                                   ),
                                                 ),
                                               ),
                                               Divider(
                                                 height:height*0.001,
                                                 color: Colors.grey,
                                               ),
                                               SizedBox(height: 10,),
                                               Container(
                                                 width: width*0.9,
                                                 height: height*0.06,
                                                 child: ElevatedButton(
                                                   style: ElevatedButton.styleFrom(
                                                     primary: Colors.red,
                                                   ),
                                                   child: Row(
                                                     children: [
                                                       Padding(
                                                         padding:EdgeInsets.only(left:width*0.2),
                                                         child: Icon(Icons.search),
                                                       ),
                                                       Text(" Search rYde",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                                     ],
                                                   ),
                                                   onPressed: (){},
                                                 ),
                                                 decoration: BoxDecoration(
                                                   borderRadius: BorderRadius.circular(11),
                                                   color: Colors.red,
                                                 ),
                                               ),
                                             ],
                                           ),
                                         ],
                                       ),
                                     ),
                                   ],
                               ),
                             ),
                           ),
                          ],
                        ),
                      ),
                      Container(
                        width: width*1,
                        height: height*0.2,
                        color: Colors.purple.shade600,
                        child: Column(
                          children: [
                            Padding(
                              padding:EdgeInsets.only(right: width*0.3,top: height*0.02),
                              child: Text("EXPERIENCE THE RIDE PROMISE",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),),
                            ),
                            SizedBox(height: 10,),
                            Container(
                              width: width*0.95,
                              height: height*0.12,
                              child:TabBar(
                                indicator: UnderlineTabIndicator(
                                  borderSide: BorderSide.none
                                ),
                                indicatorColor: Colors.white,
                                controller: ttabController,
                                isScrollable: true,
                                labelPadding: EdgeInsets.symmetric(horizontal: 30),
                                tabs: [
                                  Container(
                                      child: Tab(
                                        child: Column(
                                          children: [
                                            Image.asset("Assets/images/icons8-carpool-48.png",height: 22,),
                                            Text("Audited",style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.black),),
                                            Text("Clean cabs",style: TextStyle(fontSize: 8,color: Colors.black),),

                                          ],
                                        ),)),
                                  Container(
                                      child: Column(
                                        children: [
                                          SizedBox(height: 20,),
                                          Image.asset("Assets/images/icons8-car-location-53.png",height: 22,),
                                          Text("Monitored",style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.black),),
                                          Text("On-time pick-up",style: TextStyle(fontSize: 8,color: Colors.black),),
                                        ],
                                      )),
                                  Container(

                                      child: Column(
                                        children: [
                                          SizedBox(height: 20,),
                                          Image.asset("Assets/images/icons8-employee-64.png",height: 22,),
                                          Text("Trained",style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.black),),
                                          Text("Helpful drivers",style: TextStyle(fontSize: 8,color: Colors.black),),
                                        ],
                                      )),
                                ],
                              ),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:EdgeInsets.only(right: width*0.5,top: height*0.01),
                        child: Text("Vehicles you can book",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                      ),
                      SizedBox(height: 10,),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            SizedBox(width: 20,),
                            Container(
                              width: width*0.4,
                              height: height*0.25,
                              child: Column(
                                children: [
                                  SizedBox(height: 20,),
                                  Padding(
                                    padding:EdgeInsets.only(right: width*0.06),
                                    child: Text("Hatchbacks\nand Sedans",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black),),
                                  ),
                                  SizedBox(height: 10,),
                                  Padding(
                                    padding:EdgeInsets.only(right: width*0.07),
                                    child: Text("Ideal for about\n2-4 people",style: TextStyle(fontSize: 15,color: Colors.black),),
                                  ),
                                  Padding(
                                    padding:EdgeInsets.only(right: width*0.06,top: height*0.03),
                                    child: Image.asset("Assets/images/drawing-car-step-10-1-removebg-preview.png",height: 40,),
                                  ),
                                ],
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.purple.shade50,
                              ),
                            ),
                            SizedBox(width: 20,),
                            Container(
                              width: width*0.4,
                              height: height*0.25,
                              child: Column(
                                children: [
                                  SizedBox(height: 20,),
                                  Padding(
                                    padding:EdgeInsets.only(right: width*0.06),
                                    child: Text("Hatchbacks\nand Sedans",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black),),
                                  ),
                                  SizedBox(height: 10,),
                                  Padding(
                                    padding:EdgeInsets.only(right: width*0.07),
                                    child: Text("Ideal for about\n2-4 people",style: TextStyle(fontSize: 15,color: Colors.black),),
                                  ),
                                  Padding(
                                    padding:EdgeInsets.only(right: width*0.06,top: height*0.03),
                                    child: Image.asset("Assets/images/drawing-car-step-10-1-removebg-preview.png",height: 40,),
                                  ),
                                ],
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.purple.shade50,
                              ),
                            ),
                            SizedBox(width: 20,),
                            Container(
                              width: width*0.4,
                              height: height*0.25,
                              child: Column(
                                children: [
                                  SizedBox(height: 20,),
                                  Padding(
                                    padding:EdgeInsets.only(right: width*0.06),
                                    child: Text("Hatchbacks\nand Sedans",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black),),
                                  ),
                                  SizedBox(height: 10,),
                                  Padding(
                                    padding:EdgeInsets.only(right: width*0.07),
                                    child: Text("Ideal for about\n2-4 people",style: TextStyle(fontSize: 15,color: Colors.black),),
                                  ),
                                  Padding(
                                    padding:EdgeInsets.only(right: width*0.06,top: height*0.03),
                                    child: Image.asset("Assets/images/drawing-car-step-10-1-removebg-preview.png",height: 40,),
                                  ),
                                ],
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.purple.shade50,
                              ),
                            ),
                            SizedBox(width: 20,),
                            Container(
                              width: width*0.4,
                              height: height*0.25,
                              child: Column(
                                children: [
                                  SizedBox(height: 20,),
                                  Padding(
                                    padding:EdgeInsets.only(right: width*0.06),
                                    child: Text("Hatchbacks\nand Sedans",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black),),
                                  ),
                                  SizedBox(height: 10,),
                                  Padding(
                                    padding:EdgeInsets.only(right: width*0.07),
                                    child: Text("Ideal for about\n2-4 people",style: TextStyle(fontSize: 15,color: Colors.black),),
                                  ),
                                  Padding(
                                    padding:EdgeInsets.only(right: width*0.06,top: height*0.03),
                                    child: Image.asset("Assets/images/drawing-car-step-10-1-removebg-preview.png",height: 40,),
                                  ),
                                ],
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.purple.shade50,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:EdgeInsets.only(right: width*0.6,top: height*0.01),
                        child: Text("More about rYde",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                      ),
                      SizedBox(height: 20,),
                      Container(
                        width: width*0.9,
                        height: height*0.3,
                          decoration: BoxDecoration(
                            color: Colors.indigo,
                              borderRadius: BorderRadius.circular(10),
                          ),
                      ),
                      Padding(
                        padding:EdgeInsets.only(right: width*0.52,top: height*0.01),
                        child: Text("Book in 3 easy steps",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                      ),
                      SizedBox(height: 20,),
                      Container(
                        width: width*0.9,
                        height: height*0.1,
                        child: Row(
                            children: [
                              Text(" 1 ",style: TextStyle(fontSize: 50,color: Colors.red.shade200),),
                              Text("Give us your\ntrip details",style: TextStyle(fontSize: 15),),
                             // Image.asset("Assets/images"),
                            ],
                        ),
                        decoration: BoxDecoration(
                            color:Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(5),
                          border: Border.all(width: 2,color: Colors.red.shade100),
                        ),
                      ),
                      SizedBox(height: 20,),
                      Container(
                        width: width*0.9,
                        height: height*0.1,
                        child: Row(
                          children: [
                            Text(" 2 ",style: TextStyle(fontSize: 50,color: Colors.red.shade200),),
                            Text("See the wide\nrange of vehicles",style: TextStyle(fontSize: 15),),
                            // Image.asset("Assets/images"),
                          ],
                        ),
                        decoration: BoxDecoration(
                          color:Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(width: 2,color: Colors.red.shade100),
                        ),
                      ),
                      SizedBox(height: 20,),
                      Container(
                        width: width*0.9,
                        height: height*0.1,
                        child: Row(
                          children: [
                           Text(" 3 ",style: TextStyle(fontSize: 50,color: Colors.red.shade200),),
                            Text("Get what you book\nand go places",style: TextStyle(fontSize: 15),),
                            // Image.asset("Assets/images"),
                          ],
                        ),
                        decoration: BoxDecoration(
                          color:Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(width: 2,color: Colors.red.shade100),
                        ),
                      ),
                      SizedBox(height: 30,),

                    ],
                  ),
                ),
                //           // FOR TRAIN TICKETS....................
                Container(
                  width: width,
                  height: height,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        SizedBox(height: 15,),
                       Container(
                         height: height*0.38,
                         width: width*0.9,
                         decoration: BoxDecoration(
                           color: Colors.white,
                           borderRadius: BorderRadius.circular(5),
                           boxShadow: [
                             BoxShadow(
                               offset: Offset(5,-2),
                               blurRadius: 9,
                               color: Colors.grey,
                             ),
                             BoxShadow(
                               offset: Offset(5,-3),
                               blurRadius: 10,
                               color: Colors.white,
                             ),
                           ],
                         ),
                         child: Column(
                           children: [
                             ListTile(
                               leading:Image.asset("Assets/images/icons8-get-on-bus-50.png",height: 25,) ,
                               title: TextField(
                                 decoration: InputDecoration(
                                   border: InputBorder.none,
                                   hintText: "FROM STATION",
                                   hintStyle: TextStyle(fontSize: 13,color: Colors.grey),
                                 ),
                               ),
                             ),
                             Divider(
                               height:height*0.001,
                               color: Colors.grey,
                             ),
                             ListTile(
                               leading:Image.asset("Assets/images/icons8-get-off-bus-50.png",height: 25,) ,
                               title: TextField(
                                 decoration: InputDecoration(
                                   border: InputBorder.none,
                                   hintText: "TO STATION",
                                   hintStyle: TextStyle(fontSize: 13,color: Colors.grey),
                                 ),
                               ),
                             ),
                             Divider(
                               height:height*0.001,
                               color: Colors.grey,
                             ),
                             ListTile(
                               leading:Icon(Icons.calendar_month),
                               title: TextField(
                                 decoration: InputDecoration(
                                   border: InputBorder.none,
                                   hintText: "Mon,3 Apr",
                                   hintStyle: TextStyle(fontSize: 13,color: Colors.black,fontWeight: FontWeight.bold),
                                 ),
                               ),
                             ),
                             Divider(
                               height:height*0.001,
                               color: Colors.grey,
                             ),
                             SizedBox(height: 20,),
                             Container(
                               width: width*0.84,
                               height: height*0.055,
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(8),
                               ),
                               child: ElevatedButton(
                                 style: ElevatedButton.styleFrom(primary: Colors.red.shade400),
                                 child: Text("SEARCH TRAINS",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),),
                                 onPressed: (){},
                               ),
                             ),
                             SizedBox(height: 10,),
                             Row(
                               children: [
                                 Container(
                                   width: width*0.15,
                                   height: height*0.07,
                                   child: Image.asset("Assets/images/download__2_-removebg-preview.png"),
                                 ),
                                 Text("IRCTC",style: TextStyle(fontSize: 18,fontWeight:FontWeight.bold,color: Colors.indigo),),
                                 Text(" Authorised Partner",style: TextStyle(fontSize: 18,color: Colors.indigo),),
                               ],
                             ),
                           ],
                         ),
                       ),
                        SizedBox(height: 20,),
                        InkWell(
                          child: Container(
                            width: width*0.9,
                            height: height*0.08,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    offset: Offset(5,-2),
                                    blurRadius: 9,
                                    color: Colors.grey,
                                  ),
                                  BoxShadow(
                                    offset: Offset(5,-3),
                                    blurRadius: 10,
                                    color: Colors.white,
                                  ),
                                ],
                              borderRadius: BorderRadius.circular(8),
                              gradient: LinearGradient(
                                end: Alignment.bottomRight,
                                begin:  Alignment.topLeft,
                                colors: [
                                  Colors.white,
                                  Colors.white,
                                  Colors.red.shade100
                                ],
                              ),
                            ),
                            child: Stack(
                              children: [
                                Padding(
                                  padding:EdgeInsets.only(top: height*0.01),
                                  child: Row(
                                    children: [
                                      SizedBox(width: 20,),
                                      Text("Introducing ",style: TextStyle(fontSize: 18,color: Colors.black),),
                                      Text("Free Cancellation ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.red.shade900),),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding:EdgeInsets.only(top: height*0.04,left: width*0.05),
                                  child: Text("\$0 cancellation fee. Instant refund ",style: TextStyle(fontSize: 13,color: Colors.black),),
                                ),
                                Padding(
                                  padding:EdgeInsets.only(left: width*0.75,top: height*0.01),
                                  child: Image.asset("Assets/images/icons8-shield-64.png",height: 40,),
                                ),
                              ],
                            ),
                          ),
                          onTap: (){},
                        ),
                        SizedBox(height: 20,),
                        Text("Do more with redRail",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.black),),
                        Row(
                          children: [
                            SizedBox(width: 10,),
                          Container(
                            width: width*0.24,
                            height: height*0.1,
                            child: Column(
                              children: [
                                Container(
                                  width: width*0.15,
                                  height: height*0.055,

                                  child: Image.asset("Assets/images/icons8-ticket-80.png"),
                                ),
                                SizedBox(height: 8,),

                                Text("PNR\nstatus",style: TextStyle(fontSize: 12,color: Colors.black),),
                              ],
                            ),
                          ),
                            Container(
                              width: width*0.24,
                              height: height*0.1,
                              child: Column(
                                children: [
                                  Container(
                                    width: width*0.15,
                                    height: height*0.055,
                                    child: Image.asset("Assets/images/icons8-high-speed-train-50.png"),
                                  ),
                                  SizedBox(height: 8,),

                                  Text("Where is my\ntrain",style: TextStyle(fontSize: 12,color: Colors.black),),
                                ],
                              ),
                            ),
                            Container(
                              width: width*0.24,
                              height: height*0.1,
                              child: Column(
                                children: [
                                  Container(
                                    width: width*0.15,
                                    height: height*0.055,
                                    child: Image.asset("Assets/images/icons8-railcar-50.png"),
                                  ),
                                  SizedBox(height: 8,),
                                  Text("Coach\nposition",style: TextStyle(fontSize: 12,color: Colors.black),),
                                ],
                              ),
                            ),
                            Container(
                              width: width*0.24,
                              height: height*0.1,
                              child: Column(
                                children: [
                                  Container(
                                    width: width*0.15,
                                    height: height*0.055,
                                    child: Image.asset("Assets/images/icons8-schedule-64.png"),
                                  ),
                                  SizedBox(height: 8,),

                                  Text("Train\nSchedule",style: TextStyle(fontSize: 12,color: Colors.black),),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding:EdgeInsets.only(right: width*0.65,top: height*0.05),
                          child: Text("offers for you",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                        ),
                        SizedBox(height: 15,),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              SizedBox(width: 20,),
                              Card(
                                child: Stack(
                                  children: [
                                    Column(
                                      children: [
                                        SizedBox(height: 40,),
                                        Image.asset("Assets/images/icons8-piggy-bank-64.png",height: 40,),
                                        TextButton(onPressed: (){}, child:  Text("view details",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Colors.indigo),),),
                                      ],
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: width*0.08,top: height*0.02),
                                      child: Column(
                                        children: [
                                          Text("ZERO Convenience FEE",style: TextStyle(fontSize: 14,color: Colors.black,fontWeight: FontWeight.bold),),
                                          SizedBox(height: 20,),
                                          Padding(
                                            padding: EdgeInsets.only(right: width*0.16),
                                            child: Text("Valid till: 30 Apr",style: TextStyle(fontSize: 13,color: Colors.grey,),),
                                          ),
                                          Row(
                                            children: [
                                              Padding(
                                                padding:EdgeInsets.only(left: width*0.2,top: height*0.02),
                                                child: Container(
                                                    width: width*0.15,
                                                    height: height*0.03,
                                                    color: Colors.indigo.shade100,
                                                    child: Center(child: Text("NOFEE",style: TextStyle(fontSize: 13,color: Colors.black,fontWeight: FontWeight.bold),))
                                                ),
                                              ),
                                              IconButton(onPressed: (){}, icon: Icon(Icons.copy))
                                            ],
                                          ),

                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: 20,),
                              InkWell(
                                child: Container(
                                  width: width*0.85,
                                  height: height*0.17,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                    borderRadius: BorderRadius.circular(5),
                                    boxShadow: [
                                      BoxShadow(
                                        offset: Offset(5,-2),
                                        blurRadius: 9,
                                        color: Colors.grey,
                                      ),
                                      BoxShadow(
                                        offset: Offset(5,-3),
                                        blurRadius: 10,
                                        color: Colors.white,
                                      ),
                                    ],
                                  ),
                                  child: Stack(
                                    children: [
                                     Column(
                                       children: [
                                         SizedBox(height: 40,),
                                         Image.asset("Assets/images/icons8-piggy-bank-64.png",height: 40,),
                                         TextButton(onPressed: (){}, child:  Text("view details",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Colors.indigo),),),
                                       ],
                                     ),
                                      Padding(
                                        padding: EdgeInsets.only(left: width*0.08,top: height*0.02),
                                        child: Column(
                                          children: [
                                            Text("ZERO Convenience FEE",style: TextStyle(fontSize: 14,color: Colors.black,fontWeight: FontWeight.bold),),
                                            SizedBox(height: 20,),
                                            Padding(
                                              padding: EdgeInsets.only(right: width*0.16),
                                              child: Text("Valid till: 30 Apr",style: TextStyle(fontSize: 13,color: Colors.grey,),),
                                            ),
                                            Row(
                                              children: [
                                                Padding(
                                                  padding:EdgeInsets.only(left: width*0.2,top: height*0.02),
                                                  child: Container(
                                                    width: width*0.15,
                                                      height: height*0.03,
                                                      color: Colors.indigo.shade100,
                                                      child: Center(child: Text("NOFEE",style: TextStyle(fontSize: 13,color: Colors.black,fontWeight: FontWeight.bold),))
                                                  ),
                                                ),
                                                IconButton(onPressed: (){}, icon: Icon(Icons.copy))
                                              ],
                                            ),

                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                onTap: (){},
                              ),
                              SizedBox(width: 20,),
                              InkWell(
                                child: Container(
                                  width: width*0.85,
                                  height: height*0.17,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(5),
                                    boxShadow: [
                                      BoxShadow(
                                        offset: Offset(5,-2),
                                        blurRadius: 9,
                                        color: Colors.grey,
                                      ),
                                      BoxShadow(
                                        offset: Offset(5,-3),
                                        blurRadius: 10,
                                        color: Colors.white,
                                      ),
                                    ],
                                  ),
                                  child: Stack(
                                    children: [
                                      Column(
                                        children: [
                                          SizedBox(height: 40,),
                                          Image.asset("Assets/images/icons8-piggy-bank-64.png",height: 40,),
                                          TextButton(onPressed: (){}, child:  Text("view details",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Colors.indigo),),),
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: width*0.08,top: height*0.02),
                                        child: Column(
                                          children: [
                                            Text("ZERO Convenience FEE",style: TextStyle(fontSize: 14,color: Colors.black,fontWeight: FontWeight.bold),),
                                            SizedBox(height: 20,),
                                            Padding(
                                              padding: EdgeInsets.only(right: width*0.16),
                                              child: Text("Valid till: 30 Apr",style: TextStyle(fontSize: 13,color: Colors.grey,),),
                                            ),
                                            Row(
                                              children: [
                                                Padding(
                                                  padding:EdgeInsets.only(left: width*0.2,top: height*0.02),
                                                  child: Container(
                                                      width: width*0.15,
                                                      height: height*0.03,
                                                      color: Colors.indigo.shade100,
                                                      child: Center(child: Text("NOFEE",style: TextStyle(fontSize: 13,color: Colors.black,fontWeight: FontWeight.bold),))
                                                  ),
                                                ),
                                                IconButton(onPressed: (){}, icon: Icon(Icons.copy))
                                              ],
                                            ),

                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                onTap: (){},
                              ),
                              SizedBox(width: 20,),
                              InkWell(
                                child: Container(
                                  width: width*0.85,
                                  height: height*0.17,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(5),
                                    boxShadow: [
                                      BoxShadow(
                                        offset: Offset(5,-2),
                                        blurRadius: 9,
                                        color: Colors.grey,
                                      ),
                                      BoxShadow(
                                        offset: Offset(5,-3),
                                        blurRadius: 10,
                                        color: Colors.white,
                                      ),
                                    ],
                                  ),
                                  child: Stack(
                                    children: [
                                      Column(
                                        children: [
                                          SizedBox(height: 40,),
                                          Image.asset("Assets/images/icons8-piggy-bank-64.png",height: 40,),
                                          TextButton(onPressed: (){}, child:  Text("view details",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Colors.indigo),),),
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: width*0.08,top: height*0.02),
                                        child: Column(
                                          children: [
                                            Text("ZERO Convenience FEE",style: TextStyle(fontSize: 14,color: Colors.black,fontWeight: FontWeight.bold),),
                                            SizedBox(height: 20,),
                                            Padding(
                                              padding: EdgeInsets.only(right: width*0.16),
                                              child: Text("Valid till: 30 Apr",style: TextStyle(fontSize: 13,color: Colors.grey,),),
                                            ),
                                            Row(
                                              children: [
                                                Padding(
                                                  padding:EdgeInsets.only(left: width*0.2,top: height*0.02),
                                                  child: Container(
                                                      width: width*0.15,
                                                      height: height*0.03,
                                                      color: Colors.indigo.shade100,
                                                      child: Center(child: Text("NOFEE",style: TextStyle(fontSize: 13,color: Colors.black,fontWeight: FontWeight.bold),))
                                                  ),
                                                ),
                                                IconButton(onPressed: (){}, icon: Icon(Icons.copy))
                                              ],
                                            ),

                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                onTap: (){},
                              ),
                              SizedBox(width: 20,),
                            ],
                          ),
                        ),
                        Padding(
                          padding:EdgeInsets.only(right: width*0.65,top: height*0.04),
                          child: Text("Tutorial Video",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.black),),
                        ),
                        SizedBox(height: 10,),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              SizedBox(width: 20,),
                              Container(
                                width: width*0.23,
                                height: height*0.13,
                                child: Column(
                                  children: [
                                    Container(
                                      width: width*0.23,
                                      height: height*0.065,
                                      child: Stack(
                                        children: [
                                          ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                              child: Image.asset("Assets/images/1576528649redbus-offers-coupon-code-52.jpg",fit: BoxFit.fill,)),
                                          Padding(
                                            padding:EdgeInsets.only(left: width*0.03),
                                            child: IconButton(onPressed: (){}, icon: Icon(Icons.play_circle)),
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding:EdgeInsets.only(right: width*0.04),
                                      child: Text("How to book\nIRCTC train",style: TextStyle(fontSize: 11),),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: 20,),
                              Container(
                                width: width*0.23,
                                height: height*0.13,
                                child: Column(
                                  children: [
                                    Container(
                                      width: width*0.23,
                                      height: height*0.065,
                                      child: Stack(
                                        children: [
                                          ClipRRect(
                                              borderRadius: BorderRadius.circular(8),
                                              child: Image.asset("Assets/images/1576528649redbus-offers-coupon-code-52.jpg",fit: BoxFit.fill,)),
                                          Padding(
                                            padding:EdgeInsets.only(left: width*0.03),
                                            child: IconButton(onPressed: (){}, icon: Icon(Icons.play_circle)),
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding:EdgeInsets.only(right: width*0.04),
                                      child: Text("How to cancel\ntrain ticket",style: TextStyle(fontSize: 11),),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: 20,),
                              Container(
                                width: width*0.23,
                                height: height*0.13,
                                child: Column(
                                  children: [
                                    Container(
                                      width: width*0.23,
                                      height: height*0.065,
                                      child: Stack(
                                        children: [
                                          ClipRRect(
                                              borderRadius: BorderRadius.circular(8),
                                              child: Image.asset("Assets/images/1576528649redbus-offers-coupon-code-52.jpg",fit: BoxFit.fill,)),
                                          Padding(
                                            padding:EdgeInsets.only(left: width*0.03),
                                            child: IconButton(onPressed: (){}, icon: Icon(Icons.play_circle)),
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding:EdgeInsets.only(right: width*0.04),
                                      child: Text("How to book\nIRCTC train",style: TextStyle(fontSize: 11),),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: 20,),
                              Container(
                                width: width*0.23,
                                height: height*0.13,
                                child: Column(
                                  children: [
                                    Container(
                                      width: width*0.23,
                                      height: height*0.065,
                                      child: Stack(
                                        children: [
                                          ClipRRect(
                                              borderRadius: BorderRadius.circular(8),
                                              child: Image.asset("Assets/images/1576528649redbus-offers-coupon-code-52.jpg",fit: BoxFit.fill,)),
                                          Padding(
                                            padding:EdgeInsets.only(left: width*0.03),
                                            child: IconButton(onPressed: (){}, icon: Icon(Icons.play_circle)),
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding:EdgeInsets.only(right: width*0.04),
                                      child: Text("How to book\nIRCTC train",style: TextStyle(fontSize: 11),),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: 20,),
                              Container(
                                width: width*0.23,
                                height: height*0.13,
                                child: Column(
                                  children: [
                                    Container(
                                      width: width*0.23,
                                      height: height*0.065,
                                      child: Stack(
                                        children: [
                                          ClipRRect(
                                              borderRadius: BorderRadius.circular(8),
                                              child: Image.asset("Assets/images/1576528649redbus-offers-coupon-code-52.jpg",fit: BoxFit.fill,)),
                                          Padding(
                                            padding:EdgeInsets.only(left: width*0.03),
                                            child: IconButton(onPressed: (){}, icon: Icon(Icons.play_circle)),
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding:EdgeInsets.only(right: width*0.04),
                                      child: Text("How to book\nIRCTC train",style: TextStyle(fontSize: 11),),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding:EdgeInsets.only(right: width*0.5),
                          child: Text("Why book with us?",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                        ),
                        SizedBox(height: 20,),
                       Container(
                         width: width*0.9,
                         height: height*0.07,
                         child: Row(
                           children: [
                             SizedBox(width: 20,),
                             Text("IRCTC Authorised Partner",style: TextStyle(fontSize:15,color: Colors.black),),
                             SizedBox(width: 58,),
                             Image.asset("Assets/images/download__2_-removebg-preview.png")
                           ],
                         ),
                         decoration: BoxDecoration(
                           color: Colors.red.shade50,
                           borderRadius: BorderRadius.circular(6),
                         ),
                       ),
                        SizedBox(height: 20,),
                        Container(
                          width: width*0.9,
                          height: height*0.07,
                          child: Row(
                            children: [
                              SizedBox(width: 20,),
                              Text("Instant refunds on UPI payments",style: TextStyle(fontSize:15,color: Colors.black),),
                              Padding(
                                padding:  EdgeInsets.only(left:width*0.01),
                                child: Image.asset("Assets/images/download__2_-removebg-preview.png"),
                              )
                            ],
                          ),
                          decoration: BoxDecoration(
                            color: Colors.red.shade50,
                            borderRadius: BorderRadius.circular(6),
                          ),
                        ),
                        SizedBox(height: 20,),
                        Container(
                          width: width*0.9,
                          height: height*0.07,
                          child: Row(
                            children: [
                              SizedBox(width: 20,),
                              Text("Hassle free customer care",style: TextStyle(fontSize:13,color: Colors.black),),

                              Padding(
                                padding:  EdgeInsets.only(left: width*0.175),
                                child: Image.asset("Assets/images/download__2_-removebg-preview.png"),
                              )
                            ],
                          ),
                          decoration: BoxDecoration(
                            color: Colors.red.shade50,
                            borderRadius: BorderRadius.circular(6),
                          ),
                        ),
                        SizedBox(height: 20,),
                        Container(
                          width: width*0.9,
                          height: height*0.07,
                          child: Row(
                            children: [
                              SizedBox(width: 20,),
                              Text("Fastest confirmed booking experience",style: TextStyle(fontSize:15,color: Colors.black),),
                             // Image.asset("Assets/images/download__2_-removebg-preview.png")
                            ],
                          ),
                          decoration: BoxDecoration(
                            color: Colors.red.shade50,
                            borderRadius: BorderRadius.circular(6),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      ),
    );
  }
}
