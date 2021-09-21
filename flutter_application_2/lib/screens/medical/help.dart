import 'package:flutter/material.dart';

import '../../constants.dart';

class Help extends StatelessWidget {
  static String routeName = "/medical assistance";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text("Medical Assistance"),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: kBackgroundColor,
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 30,
              ),
              Text(
                "Here's what you can  \n  do with your child",
                style: TextStyle(
                    color: Colors.black87.withOpacity(0.8),
                    fontSize: 40,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 60,
              ),
              Center(
                  child: Text("Emergency Help",
                      style: TextStyle(
                          color: Colors.black87.withOpacity(0.8),
                          fontSize: 20,
                          //decoration: DecoratedBox(decoration: decoration),
                          backgroundColor: Colors.lightGreen,
                          fontWeight: FontWeight.w300))),
              SizedBox(
                height: 20,
              ),
              Text(
                "Giving your child a bath with cold water can help lowering temperature\nWrap a cold cloth on your child's forehead \n ",
              ),
              SizedBox(
                height: 40,
              ),
              Center(
                child: Text(
                  "Professional Medical Assistance ",
                  style: TextStyle(
                      color: Colors.black87.withOpacity(0.8),
                      fontSize: 20,
                      backgroundColor: Colors.lightGreen,
                      fontWeight: FontWeight.w300),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                  "Give your child Tylenol/ Panadol\nContact your family doctor or General Physician"),
            ],
          ),
        ),
      ),
    );
  }
}
