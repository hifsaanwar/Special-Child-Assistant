import 'package:flutter/material.dart';
import 'package:flutter_application_2/components/coustom_bottom_nav_bar.dart';
import 'package:flutter_application_2/constants.dart';
import 'package:flutter_application_2/enums.dart';
import 'package:flutter_application_2/screens/new_group/new_group_screen.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:flutter/cupertino.dart';
import 'components/body.dart';

class ChatsScreen extends StatefulWidget {
  static String routeName = "/chats";
  @override
  _ChatsScreenState createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  int _selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final PermissionStatus permissionStatus = await _getPermission();
          if (permissionStatus == PermissionStatus.granted) {
            //We can now access our contacts here
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => NewGroupScreen()));
          } else {
            //If permissions have been denied show standard cupertino alert dialog
            showDialog(
                context: context,
                builder: (BuildContext context) => CupertinoAlertDialog(
                      title: Text('Permissions error'),
                      content: Text('Please enable contacts access '
                          'permission in system settings'),
                      actions: <Widget>[
                        CupertinoDialogAction(
                          child: Text('OK'),
                          onPressed: () => Navigator.of(context).pop(),
                        )
                      ],
                    ));
          }
        },
        backgroundColor: kPrimaryColor,
        child: Icon(
          Icons.person_add_alt_1,
          color: Colors.white,
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.message),
    );
  }

  // BottomNavigationBar buildBottomNavigationBar() {
  //   return BottomNavigationBar(
  //     type: BottomNavigationBarType.fixed,
  //     currentIndex: _selectedIndex,
  //     onTap: (value) {
  //       setState(() {
  //         _selectedIndex = value;
  //       });
  //     },
  //     items: [
  //       BottomNavigationBarItem(icon: Icon(Icons.messenger), label: "Chats"),
  //       BottomNavigationBarItem(icon: Icon(Icons.people), label: "People"),
  //       BottomNavigationBarItem(icon: Icon(Icons.call), label: "Calls"),
  //       BottomNavigationBarItem(
  //         icon: CircleAvatar(
  //           radius: 14,
  //           backgroundImage: AssetImage("assets/images/user_2.png"),
  //         ),
  //         label: "Profile",
  //       ),
  //     ],
  //   );
  // }

  AppBar buildAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      title: Text("Chats"),
      actions: [
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () {},
        ),
      ],
    );
  }

  //Check contacts permission
  Future<PermissionStatus> _getPermission() async {
    final PermissionStatus permission = await Permission.contacts.status;
    if (permission != PermissionStatus.granted &&
        permission != PermissionStatus.denied) {
      final Map<Permission, PermissionStatus> permissionStatus =
          await [Permission.contacts].request();
      return permissionStatus[Permission.contacts] ??
          PermissionStatus.undetermined;
    } else {
      return permission;
    }
  }
}
