import 'package:csc_picker/csc_picker.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/countries.dart';

class Places extends StatefulWidget {
  const Places({Key? key}) : super(key: key);

  @override
  State<Places> createState() => _PlacesState();
}

class _PlacesState extends State<Places> {
  String countryValue = "";
  String stateValue = "";
  String cityValue= "";
  String address = "";

  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    var width=size.width;
    var height=size.height;
   // GlobalKey<CSCPickerState> _cscPickerKey = GlobalKey();
    return Scaffold(
      body: Container(
        width: width,
        height: height,
        child: Padding(
          padding:  EdgeInsets.only(top: height*0.05),
          child: Column(
            children: [
              CSCPicker(
                layout: Layout.vertical,
                onCountryChanged: (value) {
                  setState(() {
                    countryValue = value;
                  });
                },
                onCityChanged:(city){
                },
                onStateChanged: (state){},
              ),
             ElevatedButton(
                 onPressed: (){
                   setState(() {
                     address = "$cityValue, $stateValue, $countryValue";
                     print(address);
                   });
                 },
                 child: Text("Submit"),
             ),
              Text(address),
            ],
          ),
        ),
      ),
    );
  }
}
