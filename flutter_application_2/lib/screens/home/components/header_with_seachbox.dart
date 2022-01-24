import 'package:flutter/material.dart';
import 'package:flutter_application_2/screens/hospitals_screen/hospitals_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter_application_2/services/auth_service.dart';
import 'package:flutter_application_2/models/Hospital.dart';
import '../../../constants.dart';
import 'package:uuid/uuid.dart';

class HeaderWithSearchBox extends StatelessWidget {
  const HeaderWithSearchBox({
    Key? key,
    @required this.size,
  }) : super(key: key);

  final Size? size;

  void upload() {
    List<Hospital> hospitals = [];
    var uuid = Uuid();
    var hspId = uuid.v1();
    var h = new Hospital(
        id: hspId,
        Name: "PSRD (Pakistan Society for the Rehabilitation of the Disabled)",
        latitude: 31.5288414,
        longitude: 74.3205236);

    hospitals.add(h);
    hspId = uuid.v1();
    var h1 = new Hospital(
        id: hspId,
        Name: "Hospital for Rehabilitation Of Disabled",
        latitude: 31.5302341,
        longitude: 74.3213428);

    hospitals.add(h1);
    hspId = uuid.v1();
    var h2 = new Hospital(
        id: hspId,
        Name:
            "Lahore Residency and Rehabilitation Welfare for Special Children",
        latitude: 31.4432596,
        longitude: 74.3029246);

    hospitals.add(h2);
    hspId = uuid.v1();
    var h3 = new Hospital(
        id: hspId,
        Name:
            "Global Institute for Autism Special Needs Mind & Behavioral Sciences Rehabilitation",
        latitude: 31.476987,
        longitude: 74.2783623);

    hospitals.add(h3);
    hspId = uuid.v1();
    var h4 = new Hospital(
        id: hspId,
        Name: "Dimensions Special Children School and Rehabilitation Center",
        latitude: 31.4894167,
        longitude: 74.2471078);
    hospitals.add(h4);

    var hspRef =
        FirebaseDatabase().reference().child("Hospitals").child("Lahore");

    Map values = new Map<String, dynamic>();
    values["0"] = h.toJson();
    values["1"] = h1.toJson();
    values["2"] = h2.toJson();
    values["3"] = h3.toJson();
    values["4"] = h4.toJson();

    hspRef.set(values);
  }

  Widget setupAlertDialogContainer() {
    List<String>? cities = [
      "Lahore",
      "Islamabad",
      "Karachi",
      "Faisalabad",
      "Rawalpindi"
    ];
    return Container(
      height: 270.0, // Change as per your requirement
      width: 100.0, // Change as per your requirement
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: cities.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(cities[index]),
            onTap: () {
              //upload();
              Navigator.pop(context);
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (context) => new HospitalsScreen(
                            city: cities[index],
                          )));
            },
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: kDefaultPadding * 0.5),
      // It will cover 20% of our total height
      height: size!.height * 0.2,
      child: Stack(
        children: <Widget>[
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              height: 54,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.23),
                  ),
                ],
              ),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text('Select a city'),
                                content: setupAlertDialogContainer(),
                              );
                            });
                      },
                      child: Text(
                        "Find doctors and Hospitals",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: kPrimaryColor.withOpacity(0.6),
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  SvgPicture.asset("assets/icons/search.svg"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
