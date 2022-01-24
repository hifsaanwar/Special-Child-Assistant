import 'dart:convert';
import 'dart:ffi';
import 'package:flutter_application_2/components/hospital_list_tile.dart';
import 'package:uuid/uuid.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/constants.dart';
import 'package:flutter_application_2/models/Hospital.dart';
import 'package:geolocator/geolocator.dart';
import 'dart:math' as Math;
import 'package:flutter_application_2/screens/medical/help.dart';
import 'package:flutter_application_2/screens/social/recreational.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter_application_2/services/auth_service.dart';

class HospitalsScreen extends StatefulWidget {
  const HospitalsScreen({
    Key? key,
    @required this.city,
  }) : super(key: key);

  final String? city;

  @override
  _HospitalsScreenState createState() => _HospitalsScreenState();
}

class _HospitalsScreenState extends State<HospitalsScreen> {
  double getDistance(lat1, lon1, lat2, lon2) {
    var R = 6371; // Radius of the earth in km
    var dLat = deg2rad(lat2 - lat1); // deg2rad below
    var dLon = deg2rad(lon2 - lon1);
    var a = Math.sin(dLat / 2) * Math.sin(dLat / 2) +
        Math.cos(deg2rad(lat1)) *
            Math.cos(deg2rad(lat2)) *
            Math.sin(dLon / 2) *
            Math.sin(dLon / 2);
    var c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1 - a));
    var d = R * c; // Distance in km
    return d;
  }

  double deg2rad(deg) {
    return deg * (Math.pi / 180);
  }

  late Position currentPosition;

  getCurrentLocation() {
    Geolocator.getCurrentPosition(
            desiredAccuracy: LocationAccuracy.high,
            forceAndroidLocationManager: true)
        .then((Position position) {
      setState(() {
        currentPosition = position;
      });
    }).catchError((e) {
      print(e);
    });
  }

  List<Hospital> hospitals = [];
  void observeHospitals() {
    var hspRef =
        FirebaseDatabase().reference().child("Hospitals").child(widget.city);
    var data;
    Hospital hospital;
    hspRef.onChildAdded.listen((event) {
      //print(event.snapshot.value);
      data = new Map<String, dynamic>.from(event.snapshot.value);
      hospital = Hospital.fromJson(data);
      //31.4815° N, 74.3030° E
      var distance =
          getDistance(31.4815, 74.3030, hospital.latitude, hospital.longitude);
      hospital.distance = (distance);
      hospitals.add(hospital);
      print(currentPosition);

      setState(() {
        hospitals.sort((hsp1, hsp2) => hsp1.distance.compareTo(hsp2.distance));
      });
    });
  }

  @override
  void initState() {
    super.initState();
    getCurrentLocation();
    observeHospitals();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text("Hospitals"),
      ),
      body: ListView.builder(
        itemCount: hospitals.length,
        itemBuilder: (context, index) => HospitalListTile(
            hospital: hospitals.elementAt(index), press: () => {}),
      ),
    );
  }
}
