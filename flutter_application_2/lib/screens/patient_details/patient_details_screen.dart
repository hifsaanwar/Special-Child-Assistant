import 'package:flutter/material.dart';

import 'components/body.dart';

class PatientDetailsScreen extends StatelessWidget {
  static String routeName = "/patient_details";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Patient Details"),
      ),
      body: Body(),
    );
  }
}
