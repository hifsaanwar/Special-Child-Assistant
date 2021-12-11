// ignore_for_file: deprecated_member_use

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_2/constants.dart';
import 'package:flutter_application_2/screens/medical/help.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Symptoms extends StatelessWidget {
  static String routeName = "/symptoms";
 String content='Select Your Disease';
  String dropDownValue = 'epilepsy';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: kPrimaryColor,
          iconTheme: IconThemeData(color: Colors.white),
          title: Text("First Aid Help"),
          centerTitle: true,
        ),
        
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          
          children: [
            SizedBox(
              height: 50,
            ),
            Center(
              child: Container(
                width: 400,
      height: 100,
      padding: EdgeInsets.all(12),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: kPrimaryColor , width: 4.0),
       
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
    
      child: Text(
        content,
        style: TextStyle(fontSize: 32, color:kPrimaryColor),
        textAlign: TextAlign.center,
      ),
              ),
            ),
             
            SizedBox(
              height: 30,
            ),
             Center(
               child: Container(
                 height: 250.0,
      width: 400.0,
  decoration: BoxDecoration(
    color: const Color(0xff7c94b6),
    image: const DecorationImage(
      image: AssetImage('assets/images/BT.jpg'),
      fit: BoxFit.cover,
    ),
    border: Border.all(
      color: kPrimaryColor,
      width: 5,
    ),
    borderRadius: BorderRadius.circular(12),
  ),
),
             ),
             SizedBox(
              height: 60,
            ),
            Center(
              child: dropDownMenu(
                  size: size, context: context, dropDownValue: dropDownValue),
            ),
            Center(
              child: RaisedButton(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 60),
                  onPressed: () =>{},
                  color: Color(0xFF0C9869),
                  shape: RoundedRectangleBorder(
                    
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  child: Text(
                    "Continue",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
            ),
          ],
        ));
  }
}

Widget dropDownMenu({
  required Size size,
  required BuildContext? context,
  required String? dropDownValue,
}) {
  return StatefulBuilder(builder: (context, setState) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: size.height * 0.020,
          height: size.height * 0.005,
        ),
        Icon(
          Icons.local_hospital,
          color: kPrimaryColor,
          size: size.height * 0.035,
        ),
        SizedBox(
          width: size.height * 0.020,
        ),
        //+Todo: show no bazaar available
        Container(
          height: size.height * 0.100,
          padding: EdgeInsets.all(20.0),
          color: Colors.white,
          child: DropdownButton<String>(
              dropdownColor: Colors.white,
              elevation: 1,
              value: dropDownValue,
              hint: Text('Choose Disease'),
              items: localData.map<DropdownMenuItem<String>>((value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    value,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: kPrimaryColor,
                      fontSize: size.height * 0.024,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  dropDownValue = value;
                });
              }),
        ),
      ],
    );
  });
}

class SymptomForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SymptomFormState();
  }
}

String valueChoose = null.toString();

List<String> localData = [
  'bilateral hearing loss',
  'Cerebral Palsy',
  'Fragile X syndrome',
  'downsyndrome',
  'Kernicterus',
  'epilepsy',
  'Dyslexia',
  'Dmd'
];

class SymptomFormState extends State<SymptomForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Enter your child symptom here',
              labelText: 'Symptom 1',
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Enter your child symptom here',
              labelText: 'Symptom 2',
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Enter your child symptom here',
              labelText: 'Symptom 3',
            ),
          ),
          new Container(
              padding: const EdgeInsets.only(left: 150.0, top: 40.0),
              child: new TextButton(
                child: const Text(
                  'Get Help',
                ),
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Help()));
                },
              )),
        ],
      ),
    );
  }
}
