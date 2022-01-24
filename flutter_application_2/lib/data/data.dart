import 'package:flutter/material.dart';
import 'package:flutter_application_2/models/speciality.dart';

import 'package:flutter/cupertino.dart';

List<SpecialityModel> getSpeciality() {
  List<SpecialityModel> specialities = [];
  SpecialityModel specialityModel = new SpecialityModel(
      noOfDoctors: 10,
      speciality: "Cough & Cold",
      imgAssetPath: "assets/img1.png",
      backgroundColor: Color(0xffFBB97C));
  /*List<SpecialityModel> specialities =
      new List.generate(3, (index) => SpecialityModel(backgroundColor: Colors.white, imgAssetPath: 'assets/im',));
  SpecialityModel specialityModel = new SpecialityModel();*/

  //1
  /*specialityModel.noOfDoctors = 10;
  specialityModel.speciality = "Cough & Cold";
  specialityModel.imgAssetPath = "assets/img1.png";
  specialityModel.backgroundColor = Color(0xffFBB97C);*/
  specialities.add(specialityModel);

  specialityModel = new SpecialityModel(
      noOfDoctors: 10,
      speciality: "Cough & Cold",
      imgAssetPath: "assets/img1.png",
      backgroundColor: Color(0xffFBB97C));

  //2
  /*specialityModel.noOfDoctors = 17;
  specialityModel.speciality = "Heart Specialist";
  specialityModel.imgAssetPath = "assets/img2.png";
  specialityModel.backgroundColor = Color(0xffF69383);*/
  specialities.add(specialityModel);

  specialityModel = new SpecialityModel(
      noOfDoctors: 8,
      speciality: "Cough & Cold",
      imgAssetPath: "assets/img2.png",
      backgroundColor: Color(0xffFBB97C));

  //3
  /*specialityModel.noOfDoctors = 27;
  specialityModel.speciality = "Diabetes Care";
  specialityModel.imgAssetPath = "assets/img3.png";
  specialityModel.backgroundColor = Color(0xffEACBCB);*/
  specialities.add(specialityModel);

  specialityModel = new SpecialityModel(
      noOfDoctors: 27,
      speciality: "Diabetes",
      imgAssetPath: "assets/img1.png",
      backgroundColor: Color(0xffFBB97C));

  return specialities;
}
