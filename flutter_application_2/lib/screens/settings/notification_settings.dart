import 'package:flutter/material.dart';
import 'package:flutter_application_2/screens/chats/components/body.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_application_2/constants.dart';

class NotificationScreen extends StatefulWidget {
  @override
  _NotificationOnePageState createState() => _NotificationOnePageState();
}

class _NotificationOnePageState extends State<NotificationScreen> {
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
            'Notification Settings',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: Stack(fit: StackFit.expand, children: <Widget>[
          SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const SizedBox(height: 20.0),
                SwitchListTile(
                  activeColor: kPrimaryColor,
                  contentPadding: const EdgeInsets.all(0),
                  value: true,
                  title: Text("Received notification"),
                  onChanged: (val) {},
                ),
                SwitchListTile(
                  activeColor: kPrimaryColor,
                  contentPadding: const EdgeInsets.all(0),
                  value: false,
                  title: Text("Received newsletter"),
                  onChanged: (val) {},
                ),
                SwitchListTile(
                  activeColor: kPrimaryColor,
                  contentPadding: const EdgeInsets.all(0),
                  value: true,
                  title: Text("Received Offer Notification"),
                  onChanged: (val) {},
                ),
                SwitchListTile(
                  activeColor: kPrimaryColor,
                  contentPadding: const EdgeInsets.all(0),
                  value: true,
                  title: Text("Received App Updates"),
                  onChanged: (val) {},
                ),
                const SizedBox(height: 60.0),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
