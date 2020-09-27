import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mafcode/components/drawer.dart';
import 'dart:io' show Platform;

class SubmitScreen extends StatefulWidget {
  static const id = "submit_screen";

  @override
  _SubmitScreenState createState() => _SubmitScreenState();
}

class _SubmitScreenState extends State<SubmitScreen> {
  String selectedStatus;
  static  List<String> statusList = ['Missing Person', 'Finding person',];
  DropdownButton<String> androidDropDownButton(){
    List<DropdownMenuItem<String>> dropDownItems = [];
    for(String status in statusList){
      var newItem = DropdownMenuItem(child: Text(status) , value: status,);
      dropDownItems.add(newItem);
    }
    return DropdownButton<String>(
        value: selectedStatus, items: dropDownItems, onChanged: (value){
      setState(() {
        selectedStatus = value;
      });
    });
  }
  CupertinoPicker iosPicker(){
    List<Text> pickerItems = [];
    for(String status in statusList){
      pickerItems.add(Text(status));
    }
    return CupertinoPicker(
        backgroundColor: Colors.lightBlue,
        itemExtent: 32.0, onSelectedItemChanged: (selectedIndex){
      print(selectedIndex);
    }, children: pickerItems);
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff00416A),
          title: Text("Submit a Photo"),
        ),
        drawer: CustomDrawer(
          screenName: SubmitScreen.id,
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 50.0,top: 20.0,right: 50.0,),
          child: Column(
            children: <Widget>[
              Container(
                //margin: new EdgeInsets.only(left: 30.0),
                child: CircleAvatar(backgroundImage:AssetImage('assets/images/upload_image.PNG'), radius: 100.0,),
              ),
              Container(
                //height: 150.0,
                alignment: Alignment.center,
                //padding: EdgeInsets.only(bottom: 10.0),
                //color: Colors.lightBlue,
                child: Platform.isIOS ? iosPicker() : androidDropDownButton() ,
              ),
              TextFormField(
                style: TextStyle(color: Color(0xff00416A)),
                decoration: InputDecoration(
                  labelText: 'Name',
//                  labelStyle: TextStyle(color: Color(0xff00416A)),
//                  hoverColor: Color(0xff00416A),
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'Age'
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'Last Seen Location'
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'Last Seen Date'
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'Cloths'
                ),
              ),



            ],
          ),
          ),
        ),
      );
  }
  }
// import 'package:flutter/material.dart';
// import 'package:mafcode/components/drawer.dart';

// class SubmitScreen extends StatelessWidget {
//   static const id = "submit_screen";
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         appBar: AppBar(
//           title: Text("MafCode"),
//         ),
//         drawer: CustomDrawer(
//           screenName: id,
//         ),
//         body: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Container(
//             child: Text('submit'),
//           ),
//         ),
//       ),
//     );
//   }
// }
