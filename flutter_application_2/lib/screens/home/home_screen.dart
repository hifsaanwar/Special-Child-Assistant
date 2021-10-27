import 'package:flutter/material.dart';
import 'package:flutter_application_2/screens/helpcenter/helpcenter.dart';
import 'package:flutter_application_2/screens/settings/notification_settings.dart';
import 'package:flutter_application_2/screens/settings/settings_screen.dart';
import 'package:flutter_application_2/screens/sign_in/sign_in_screen.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_application_2/components/coustom_bottom_nav_bar.dart';
import 'package:flutter_application_2/components/my_bottom_nav_bar.dart';
import 'package:flutter_application_2/enums.dart';
import 'package:flutter_application_2/screens/home/components/body.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_application_2/services/auth_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_application_2/screens/settings/EditProfileScreen.dart';

import '../../constants.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";
  final AuthService service = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Special Child Assistant"),
        backgroundColor: kPrimaryColor,
        iconTheme: IconThemeData(color: Colors.white)
      ),
      body: Body(),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("User Name"),
              accountEmail: Text("User@gmail.com"),
              currentAccountPicture:
                  CircleAvatar(backgroundImage: NetworkImage("")),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("My Account"),
              trailing: Icon(Icons.arrow_right),
              onTap: () => {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> EditProfileScreen()))
              },
            ),
            ListTile(
              leading: Icon(Icons.notifications),
              title: Text("Notifications"),
              trailing: Icon(Icons.arrow_right),
              onTap: () => {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => NotificationScreen()))
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
              trailing: Icon(Icons.arrow_right),
              onTap: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SettingsScreen(),
                  ),
                ),
              },
            ),
            ListTile(
              leading: Icon(Icons.help_center),
              title: Text("Help Center"),
              trailing: Icon(Icons.arrow_right),
              onTap: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HelpScreen(),
                  ),
                ),
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Logout"),
              trailing: Icon(Icons.arrow_right),
              onTap: () => {service.signOut(context)},
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}
