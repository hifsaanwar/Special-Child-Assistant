import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_application_2/helper/keyboard.dart';
import 'package:flutter_application_2/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/screens/patient_details/patient_details_screen.dart';
import 'package:flutter_application_2/helper/phoneNumberArgs.dart';
import 'package:flutter_application_2/screens/sign_in/sign_in_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // create user obj based on firebase user
  // User _userFromFirebaseUser(FirebaseUser user) {
  //   return user != null ? User(uid: user.uid) : null;
  // }

  // // auth change user stream
  // Stream<User> get user {
  //   return _auth.onAuthStateChanged
  //     //.map((FirebaseUser user) => _userFromFirebaseUser(user));
  //     .map(_userFromFirebaseUser);
  // }

  // sign in anon
  Future verifyPhoneNumber(BuildContext context, String phoneNumber) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await FirebaseAuth.instance.verifyPhoneNumber(
        phoneNumber: phoneNumber,
        verificationCompleted: (PhoneAuthCredential credential) {
          KeyboardUtil.hideKeyboard(context);
          Navigator.pushNamed(context, HomeScreen.routeName);
        },
        verificationFailed: (FirebaseAuthException e) {
          if (e.code == 'invalid-phone-number') {
            print('The provided phone number is not valid.');
          }
        },
        codeSent: (String verificationId, int? resendToken) {
          prefs.setString('vid', verificationId);
        },
        codeAutoRetrievalTimeout: (String verificationId) {});
  }

  // sign in with email and password
  Future signInWithEmailAndPassword(
      String email, String password, BuildContext context) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      User? user = result.user;
      KeyboardUtil.hideKeyboard(context);
      Navigator.pushNamed(context, HomeScreen.routeName);
      return user;
    } catch (error) {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: Text("Sign In Error"),
                content: Text(error.toString()),
                actions: <Widget>[
                  // usually buttons at the bottom of the dialog
                  new TextButton(
                    child: new Text("OK"),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ));
      //  print(error.toString());
      return null;
    }
  }

  // register with email and password
  Future registerWithEmailAndPassword(
      String email, String password, BuildContext context, String phone) async {
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      User? user = result.user;
      Navigator.pushNamed(context, PatientDetailsScreen.routeName,
          arguments: PhoneArguments(phone));
      return user;
    } catch (error) {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: Text("Sign Up Error"),
                content: Text(error.toString()),
                actions: <Widget>[
                  // usually buttons at the bottom of the dialog
                  new TextButton(
                    child: new Text("OK"),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ));
      //0000print(error.toString());
      return null;
    }
  }

  Future<String> currentUser() async {
    User user = _auth.currentUser!;
    return user.uid;
  }

  // sign out
  Future signOut(BuildContext context) async {
    try {
      await _auth.signOut();
      _auth.authStateChanges().listen((user) {
        if (user == null) {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => SignInScreen()));
        }
      });
    } catch (error) {
      print(error.toString());
      return null;
    }
  }
}
