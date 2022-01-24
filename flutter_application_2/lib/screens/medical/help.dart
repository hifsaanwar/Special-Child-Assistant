import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/screens/medical/symp.dart';

import '../../constants.dart';

class Help extends StatefulWidget {
  static String routeName = "/medical assistance";
  String? dropDownValue;

  Help(
    this.dropDownValue,
  );

  @override
  State<Help> createState() => _HelpState();
}

class _HelpState extends State<Help> {
  FirebaseFirestore _firestore = FirebaseFirestore.instance;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    String? symptomsDropDown;
    String dropdown = widget.dropDownValue!;

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
              StreamBuilder<QuerySnapshot>(
                stream: FirebaseFirestore.instance
                    .collection(widget.dropDownValue!)
                    .snapshots(),
                builder: (BuildContext context,
                    AsyncSnapshot<QuerySnapshot> snapshot) {
                  if (snapshot.hasError) {
                    return Center(child: Text('Error while loading'));
                  }
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(child: CircularProgressIndicator());
                  }
                  if (snapshot.hasData && snapshot.data!.docs.isEmpty) {
                    return Center(
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: Text('No Symptoms available'),
                      ),
                    );
                  }
                  var length = snapshot.data!.docs.length;
                  DocumentSnapshot ds = snapshot.data!.docs[length - 1];
                  symptomsDropDown = snapshot.data!.docs[0]['name'];
                  return Container(
                    height: size.height * 0.100,
                    padding: EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: DropdownButton<String>(
                        dropdownColor: Colors.white,
                        elevation: 1,
                        value: symptomsDropDown,
                        hint: Text('Choose Disease'),
                        items: snapshot.data!.docs
                            .map<DropdownMenuItem<String>>((value) {
                          return DropdownMenuItem<String>(
                            value: ds.get('name'),
                            child: Text(
                              ds.get('name'),
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
                            symptomsDropDown = value!;
                          });
                        }),
                  );
                },
              ),
              //
              SizedBox(
                height: 30,
              ),
              symptomsDropDown == null
                  ? Container()
                  : StreamBuilder<DocumentSnapshot>(
                      stream: _firestore
                          .doc('/$dropdown/$symptomsDropDown')
                          .snapshots(),
                      builder: (context, snapshot) {
                        if (snapshot.hasError) {
                          return Center(child: Text('Error while loading'));
                        }
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return Center(
                            child: CircularProgressIndicator(),
                          );
                        }
                        if (snapshot.hasData && !snapshot.data!.exists) {
                          return Center(
                              child: Text('No Description available'));
                        }
                        return Column(
                          children: [
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
                              snapshot.data!.get('Emergency Help'),
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
                              snapshot.data!.get('Medical Help'),
                            ),
                          ],
                        );
                      }),
            ],
          ),
        ),
      ),
    );
  }
}
