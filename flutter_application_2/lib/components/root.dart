import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/components/custom_surfix_icon.dart';
import 'package:flutter_application_2/components/form_error.dart';
import 'package:flutter_application_2/helper/keyboard.dart';
import 'package:flutter_application_2/screens/forgot_password/forgot_password_screen.dart';
import 'package:flutter_application_2/screens/home/home_screen.dart';
import 'package:flutter_application_2/screens/sign_in/sign_in_screen.dart';
import 'package:flutter_application_2/screens/splash/splash_screen.dart';
import 'package:flutter_application_2/services/auth_service.dart';

import '../../../components/default_button.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

enum AuthStatus { signedIn, notSignedIn }

class RootPage extends StatefulWidget {
  static String routeName = "/root";
  @override
  _RootPage createState() => _RootPage();
}

class _RootPage extends State<RootPage> {
  final List<String> errors = [];
  final AuthService service = AuthService();
  AuthStatus status = AuthStatus.notSignedIn;
  @override
  void initState() {
    super.initState();
    service.currentUser().then((uid) => {
          if (uid == null)
            {status = AuthStatus.notSignedIn}
          else
            {status = AuthStatus.signedIn}
        });
  }

  void addError({String? error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error!);
      });
  }

  void removeError({String? error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }

  @override
  Widget build(BuildContext context) {
    switch (status) {
      case AuthStatus.notSignedIn:
        return new SplashScreen();
      case AuthStatus.signedIn:
        return new HomeScreen();
    }
  }
}
