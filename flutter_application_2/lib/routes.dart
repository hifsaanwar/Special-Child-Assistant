import 'package:flutter/widgets.dart';
import 'package:flutter_application_2/screens/chats/chats_screen.dart';
import 'package:flutter_application_2/screens/educational%20institutes/Schools.dart';
// import 'package:shop_app/screens/complete_profile/complete_profile_screen.dart';
// import 'package:shop_app/screens/details/details_screen.dart';
import 'package:flutter_application_2/screens/forgot_password/forgot_password_screen.dart';
import 'package:flutter_application_2/screens/home/home_screen.dart';
import 'package:flutter_application_2/screens/jobs/jobs.dart';
import 'package:flutter_application_2/screens/medical/help.dart';
// import 'package:fyp_project_ui/screens/login_success/login_success_screen.dart';
import 'package:flutter_application_2/screens/otp/otp_screen.dart';
import 'package:flutter_application_2/screens/profile/profile_screen.dart';
import 'package:flutter_application_2/screens/sign_in/sign_in_screen.dart';
import 'package:flutter_application_2/screens/social/recreational.dart';
import 'package:flutter_application_2/screens/social/social.dart';
import 'package:flutter_application_2/screens/splash/splash_screen.dart';
import 'package:flutter_application_2/screens/medical/symptoms.dart';
import 'package:flutter_application_2/components/root.dart';
import 'package:flutter_application_2/screens/patient_details/patient_details_screen.dart';
import 'screens/sign_up/sign_up_screen.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  // LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  // CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  OtpScreen.routeName: (context) => OtpScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  // DetailsScreen.routeName: (context) => DetailsScreen(),
  ChatsScreen.routeName: (context) => ChatsScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
  Symptoms.routeName: (context) => Symptoms(),
  // Help.routeName: (context) => Help(),
  Social.routeName: (context) => Social(),
  HomePage.routeName: (context) => HomePage(),
  Schools.routeName: (context) => Schools(),
  Recreational.routeName: (context) => Recreational(),
  PatientDetailsScreen.routeName: (context) => PatientDetailsScreen(),
  RootPage.routeName: (context) => RootPage(),
};
