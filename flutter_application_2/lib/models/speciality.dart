import 'package:flutter/cupertino.dart';

class SpecialityModel {
  String imgAssetPath;
  String speciality;
  int noOfDoctors;
  Color backgroundColor;
  SpecialityModel(
      {required this.imgAssetPath,
      required this.speciality,
      required this.noOfDoctors,
      required this.backgroundColor});
}
