import 'package:flutter/material.dart';
import 'package:flutter_application_2/constants.dart';
import 'package:flutter_application_2/screens/educational%20institutes/Schools.dart';
import 'package:flutter_application_2/screens/jobs/jobs.dart';

import 'package:flutter_application_2/screens/medical/help.dart';
import 'package:flutter_application_2/screens/social/art_therapy.dart';
import 'package:flutter_application_2/screens/social/miracle_league.dart';
import 'package:flutter_application_2/screens/social/music_therapy.dart';
import 'package:flutter_application_2/screens/social/pet_therapy.dart';
import 'package:flutter_application_2/screens/social/social_olympics.dart';
import 'package:flutter_application_2/screens/social/swimming.dart';
import 'package:flutter_application_2/screens/social/vision_therapy.dart';

class Recreational extends StatelessWidget {
  static String routeName = "/recreational";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text("Recreational Activities"),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 16,
            ),
            SizedBox(
              width: 200,
              height: 50,
              child: RaisedButton(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 30),
                 onPressed: () {  
                Navigator.push(  
                context,  
                MaterialPageRoute(builder: (context) => Swimming()),  
               );  
               },
                color: Color(0xFF0C9869),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                child: Text(
                  "Adaptive swimming",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            SizedBox(
              width: 200,
              height: 50,
              child: RaisedButton(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 30),
                 onPressed: () {  
                Navigator.push(  
                context,  
                MaterialPageRoute(builder: (context) => MiracleLeague()),  
               );  
               },
                color: Color(0xFF0C9869),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                child: Text(
                  "Miracle League",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            SizedBox(
              width: 200,
              height: 50,
              child: RaisedButton(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 30),
                 onPressed: () {  
                Navigator.push(  
                context,  
                MaterialPageRoute(builder: (context) => SpecialOlympics()),  
               );  
               },
                color: Color(0xFF0C9869),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                child: Text(
                  " Special Olympics",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            SizedBox(
              width: 200,
              height: 50,
              child: RaisedButton(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 30),
                 onPressed: () {  
                Navigator.push(  
                context,  
                MaterialPageRoute(builder: (context) => ArtTherapy()),  
               );  
               },
                color: Color(0xFF0C9869),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                child: Text(
                  "Art therapy",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            SizedBox(
              width: 200,
              height: 50,
              child: RaisedButton(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 30),
                 onPressed: () {  
                Navigator.push(  
                context,  
                MaterialPageRoute(builder: (context) => MusicTherapy()),  
               );  
               },
                color: Color(0xFF0C9869),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                child: Text(
                  "Music therapy",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            SizedBox(
              width: 200,
              height: 50,
              child: RaisedButton(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 30),
                 onPressed: () {  
                Navigator.push(  
                context,  
                MaterialPageRoute(builder: (context) => PetTherapy()),  
               );  
               },
                color: Color(0xFF0C9869),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                child: Text(
                  "Pet therapy",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            SizedBox(
              width: 200,
              height: 50,
              child: RaisedButton(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 30),
                 onPressed: () {  
                Navigator.push(  
                context,  
                MaterialPageRoute(builder: (context) => VisionTherapy()),  
               );  
               },
                color: Color(0xFF0C9869),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                child: Text(
                  "Vision therapy",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}
