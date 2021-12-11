
import 'package:flutter/material.dart';
import 'package:flutter_application_2/constants.dart';
import 'package:flutter_application_2/screens/medical/help.dart';

class Symptoms extends StatelessWidget {
  static String routeName = "/symp";

  @override
  Widget build(BuildContext context) {
    String dropDownValue = 'epilepsy';
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text("First Aid Help"),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: kBackgroundColor,
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 10,
              ),
              Text(
                "Enter Your Child's \n Symptoms Here",
                style: TextStyle(
                    color: Colors.black87.withOpacity(0.8),
                    fontSize: 30,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 40,
              ),
               Center(
              child: dropDownMenu(
                  size: size, context: context, dropDownValue: dropDownValue),
            ),

            ],
          ),
        ),
      ),
    );
  }
}


List<String> localData = [
  /*bilateral hearing loss*/ 'Reduced Hearing',
  /*Cerebral Palsy*/ 'Stiff Muscles',
  'Tremors',
  /*Fragile X syndrome*/ 'Tempor Tantrums',
  'Anxiety',
  'Aggressive/Self Destructive Behavior',
  'Hyperactivity' /*downsyndrome*/,
  'Flat Fatial Features',
  'Bulging Toungue',
  'Upward Slanting Eyes' /*Kernicterus*/,
  'Fever/Drowsiness',
  'Paleness',
  'Poor Feeding',
  'Muscle Spasms' /*epilepsy*/,
  'Stroke',
  'Lack Of Oxygen',
  'Cyst' /*Dyslexia*/,
  'Difficulty in Language Processing/Learning',
  'Unable to speak or pronounce words properly',
  'Using a lot of "Umms" in Coversation',
  /*Dmd*/ 'Shortness of Breath',
  'Headaches',
  'Slow Movements',
  'Seizures',
  'Sleepiness',
  'Trouble Concentrating',
  'Clumsiness'
];


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
