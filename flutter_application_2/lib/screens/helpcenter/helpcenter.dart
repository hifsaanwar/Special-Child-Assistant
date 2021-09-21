import 'package:flutter/material.dart';
import 'package:flutter_application_2/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HelpScreen extends StatefulWidget {
  static String routeName = "/helpcenter";
  @override
  _HelpScreenOnePageState createState() => _HelpScreenOnePageState();
}

class _HelpScreenOnePageState extends State<HelpScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(),
      child: Scaffold(
        backgroundColor: Colors.grey.shade200,
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: kPrimaryColor,
          title: Text(
            'Help Center',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("For queries email us at specialchild@gmail.com"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
