// @dart=2.9
import 'package:flutter/material.dart';
import 'package:flutter_application_2/components/root.dart';
import 'package:flutter_application_2/constants.dart';
import 'package:flutter_application_2/routes.dart';
import 'package:flutter_application_2/screens/splash/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FYP Flutter UI',
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        primaryColor: kPrimaryColor,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
      ),
      initialRoute: RootPage.routeName,
      routes: routes,
    );
  }
}
